import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:movie_app/core/utils/appLog.dart';

abstract class BaseApiClient {
  Future<dynamic> post(
      {required String url, required Map<String, dynamic> payload});
}

class ApiClient implements BaseApiClient {
  final Dio dio = Dio(BaseOptions(
      connectTimeout: const Duration(seconds: 60),
      responseType: ResponseType.json));

  @override
  Future<(dynamic, DioException?)> post(
      {required String url, required Map<String, dynamic> payload}) async {
    // TODO: implement get
    try {

      log('PAYLOAD: $payload');

      AppLog.showLog(tag: 'POST', message: url);
      AppLog.showLog(tag: 'Payload', object: json.encode(payload));

      final response = await dio.post(url, data: json.encode(payload));

      log('RESPONSE: ${response.data}');

      return (response, null);
    } on DioException catch (e) {
      AppLog.showLog(tag: 'Failed', object: e);

      log('DIO ERROR: ${e.response?.data}');

      return (null, e);
    } catch (error) {
      AppLog.showLog(tag: 'Error', object: error);

      log('GENERIC ERROR: $error');

      return (null, null);
    }
  }
}
