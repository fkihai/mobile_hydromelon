class User {
  bool? success;
  Data? data;

  User({this.success, this.data});

  User.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['success'] = success;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  ExistingUser? existingUser;
  String? accessToken;

  Data({this.existingUser, this.accessToken});

  Data.fromJson(Map<String, dynamic> json) {
    existingUser = json['existingUser'] != null
        ? ExistingUser.fromJson(json['existingUser'])
        : null;
    accessToken = json['accessToken'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (existingUser != null) {
      data['existingUser'] = existingUser!.toJson();
    }
    data['accessToken'] = accessToken;
    return data;
  }
}

class ExistingUser {
  String? email;
  String? name;

  ExistingUser({this.email, this.name});

  ExistingUser.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['email'] = email;
    data['name'] = name;
    return data;
  }
}
