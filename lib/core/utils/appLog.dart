import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class AppLog {
  static void showLog(
      {String? tag,
      String? message,
      DioException? dioError,
      Object? object,
      StackTrace? stackTrace}) {
    {
      if (kDebugMode) {
        log('Tag: $tag,\n Message: $message,\n DioError: $dioError, \n Object $object, \n Error: $dioError,\n StackTrace: $stackTrace');
      }
    }
  }
}
