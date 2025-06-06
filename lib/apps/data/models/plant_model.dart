class GetPlants {
  bool? success;
  List<Data>? data;

  GetPlants({this.success, this.data});

  GetPlants.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data?.add(Data.fromJson(v));
      });
    }
  }
}

class Data {
  int? id;
  Attributes? attributes;

  Data({this.id, this.attributes});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    attributes = json['attributes'] != null
        ? Attributes?.fromJson(json['attributes'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    if (attributes != null) {
      data['attributes'] = attributes?.toJson();
    }
    return data;
  }
}

class Attributes {
  String? name;
  int? idPlant;
  int? weight;
  int? pixel;
  String? updated;

  Attributes({this.name, this.weight, this.pixel, this.idPlant, this.updated});

  Attributes.fromJson(Map<String, dynamic> json) {
    idPlant = json['id_plant'];
    name = json['name'];
    weight = json['weight'];
    pixel = json['pixel'];
    updated = json['updated'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['weight'] = weight;
    data['pixel'] = pixel;
    data['id_plant'] = idPlant;
    data['updated'] = updated;
    return data;
  }
}
