import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'dart:developer';
import '../local/session.dart';
import '../models/plantById_model.dart';
import '../models/plant_model.dart';
import '../remote/api_endpoint.dart';

class PlantRepository {
  static Future<GetPlants?> getplants() async {
    try {
      final dio = Dio();
      final token = await Session.getToken();
      dio.options.baseUrl = ApiEndpoint.baseUrl;
      dio.options.headers = {"Authorization": "Bearer $token"};
      final response = await dio.get(ApiEndpoint.plants);

      if (response.statusCode == 201) {
        return GetPlants.fromJson(response.data);
      }
      return null;
    } catch (e) {
      if (kDebugMode) {
        log(e.toString(), name: 'GET PLANTS');
      }
    }
    return null;
  }
}

class PlantRepositoryById {
  static Future<PlantById?> getPlantById(int id) async {
    try {
      final dio = Dio();
      final token = await Session.getToken();
      dio.options.baseUrl = ApiEndpoint.baseUrl;
      dio.options.headers = {"Authorization": "Bearer $token"};
      final response = await dio.get('${ApiEndpoint.plantById}$id');
      if (response.statusCode == 200) {
        return PlantById.fromJson(response.data);
      } else {
        log(response.data['message'].toString(), name: "RESPONSE QUERY");
      }
      return null;
    } catch (e) {
      log(e.toString(), name: 'GET PLANTS BY ID');
    }
    return null;
  }
}

class PlantHistory {
  int? id;
  static Future<GetPlants?> getHistory(int id) async {
    try {
      final dio = Dio();
      final token = await Session.getToken();
      dio.options.baseUrl = ApiEndpoint.baseUrl;
      dio.options.headers = {"Authorization": "Bearer $token"};
      final response = await dio.get('${ApiEndpoint.history}$id');
      if (response.statusCode == 200) {
        return GetPlants.fromJson(response.data);
      } else {
        log(response.data['message'].toString(), name: "RESPONSE HISTORY");
      }
      return null;
    } catch (e) {
      log(e.toString(), name: 'GET HISTORY');
    }
    return null;
  }
}
