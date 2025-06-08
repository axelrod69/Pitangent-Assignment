import 'package:dio/dio.dart';
import 'package:movie_app/features/homeScreen/domain/model/translationResponse.dart';
import 'package:movie_app/features/homeScreen/domain/repository/translationRepository.dart';

class TranslationUseCase {
  final TranslationRepository translationRepository;

  TranslationUseCase(this.translationRepository);

  Future<(TranslationResponse?, DioException?)> translate({required String? text, required String? languageCode}) async {
    return translationRepository.translate(text: text, languageCode: languageCode);
  }
}