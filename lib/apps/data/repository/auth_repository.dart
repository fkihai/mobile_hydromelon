import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../models/auth_model.dart';
import '../remote/api_endpoint.dart';

class AuthRepositroy {
  static Future<AuthModel?> login({
    required String email,
    required String password,
  }) async {
    try {
      final dio = Dio();
      dio.options.headers = {
        'Content-Type': 'application/json',
        'X-API-KEY': dotenv.get("API_SECRET"),
      };
      dio.options.baseUrl = ApiEndpoint.baseUrl;
      Map<String, dynamic> params = {
        "email": email,
        "password": password,
      };
      final response = await dio.post(ApiEndpoint.singIn, data: params);
      if (response.statusCode == 200) {
        AuthModel authData = AuthModel.fromJson(response.data);
        if (kDebugMode) {
          log(authData.token.toString(), name: "AUTH USER");
          log(authData.refreshToken.toString(), name: "AUTH USER");
        }
        return authData;
      }
      return null;
    } catch (e) {
      if (kDebugMode) {
        log(e.toString(), name: 'AUTH USER');
      }
    }
    return null;
  }
}
