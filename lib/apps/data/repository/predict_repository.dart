import 'dart:developer';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:mobile_hydromelon/apps/data/remote/api_endpoint.dart';

import '../local/session.dart';
import '../models/predict_model.dart';

class PredictRepository {
  static Future<PredictModel?> predict({required File file}) async {
    try {
      final dio = Dio();
      final token = await Session.getToken();
      dio.options.headers = {
        'Content-Type': 'multipart/form-data',
        'X-API-KEY': dotenv.get("API_SECRET"),
        "Authorization": "Bearer $token"
      };
      dio.options.baseUrl = ApiEndpoint.baseUrl;
      dio.options.connectTimeout = const Duration(seconds: 10);
      String filename = file.path.split('/').last;

      FormData formData = FormData.fromMap({
        'image': await MultipartFile.fromFile(file.path, filename: filename)
      });

      final response = await dio.post(ApiEndpoint.predict, data: formData);
      Map<String, dynamic> data = response.data["data"];

      if (response.statusCode == 200) {
        PredictModel predictModel = PredictModel.fromJson(data);
        if (kDebugMode) {
          log(data.toString(), name: 'PRDICT REPOSITORY');
        }
        return predictModel;
      }
    } catch (e) {
      if (kDebugMode) {
        log(e.toString(), name: 'PRDICT REPOSITORY');
      }
    }
    return null;
  }
}
