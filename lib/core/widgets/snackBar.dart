import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:movie_app/core/network/apiExceptions.dart';
import 'package:movie_app/core/theme/colors.dart';

Future<void> showSuccessToast({String? message, bool? theme}) async {
  await Fluttertoast.showToast(
      msg: message ?? '',
      backgroundColor: Colors.black,
      // theme == false
      //     ? AppColors.backgroundColorLight
      //     : AppColors.backgroundColorDark,
      toastLength: Toast.LENGTH_LONG,
      textColor: Colors.white
      // theme == false
      //     ? AppColors.backgroundColorLight
      //     : AppColors.backgroundColorDark
      );
}

Future<void> showDioError({dynamic e, bool? theme}) async {
  final errorResponse = DioExceptions.fromDioError(dioException: e);

  await Fluttertoast.showToast(
      msg: errorResponse.toString(),
      backgroundColor: Colors.black,
      // theme == false
      //     ? AppColors.backgroundColorLight
      //     : AppColors.backgroundColorDark,
      toastLength: Toast.LENGTH_LONG,
      textColor: Colors.white
      // theme == false
      //     ? AppColors.backgroundColorLight
      //     : AppColors.backgroundColorDark
      );
}

Future<void> showConnectionInterrupted({bool? theme}) async {
  await Fluttertoast.showToast(
      msg: 'Connection Was Interrupted',
      backgroundColor: Colors.black,
      // theme == false
      //     ? AppColors.backgroundColorLight
      //     : AppColors.backgroundColorDark,
      toastLength: Toast.LENGTH_LONG,
      textColor: Colors.white
      // theme == false
      //     ? AppColors.backgroundColorLight
      //     : AppColors.backgroundColorDark
      );
}
