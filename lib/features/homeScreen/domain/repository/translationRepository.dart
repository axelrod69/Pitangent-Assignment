import 'package:dio/dio.dart';
import 'package:movie_app/features/homeScreen/domain/model/translationResponse.dart';

abstract class TranslationRepository {
  Future<(TranslationResponse?, DioException?)> translate({
    required String? text,
    required String? languageCode
  });
}