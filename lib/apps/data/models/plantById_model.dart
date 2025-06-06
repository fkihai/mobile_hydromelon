class PlantById {
  bool? success;
  Data? data;

  PlantById({this.success, this.data});

  PlantById.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    data = json['data'] != null ? Data?.fromJson(json['data']) : null;
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
  int? idPlant;
  String? name;
  int? weight;
  int? pixel;
  String? updated;

  Attributes({this.idPlant, this.name, this.weight, this.pixel, this.updated});

  Attributes.fromJson(Map<String, dynamic> json) {
    idPlant = json['id_plant'];
    name = json['name'];
    weight = json['weight'];
    pixel = json['pixel'];
    updated = json['updated'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id_plant'] = idPlant;
    data['name'] = name;
    data['weight'] = weight;
    data['pixel'] = pixel;
    data['updated'] = updated;
    return data;
  }
}
