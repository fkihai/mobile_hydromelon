class AuthModel {
  String? token;
  String? refreshToken;

  AuthModel({this.token, this.refreshToken});

  AuthModel.fromJson(Map<String, dynamic> json) {
    token = json['access'];
    refreshToken = json['refresh'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["access"] = token;
    data["refresh"] = refreshToken;
    return data;
  }
}
