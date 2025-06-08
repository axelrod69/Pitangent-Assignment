import 'package:dio/src/dio_exception.dart';
import 'package:movie_app/features/homeScreen/data/datasource/translationDatasource.dart';
import 'package:movie_app/features/homeScreen/domain/model/translationResponse.dart';
import 'package:movie_app/features/homeScreen/domain/repository/translationRepository.dart';

class TranslationRepositoryImpl implements TranslationRepository {
  final TranslationDatasource translationDatasource;

  TranslationRepositoryImpl(this.translationDatasource);

  @override
  Future<(TranslationResponse?, DioException?)> translate({required String? text, required String? languageCode}) async {
    // TODO: implement translate
    return translationDatasource.translate(text: text, languageCode: languageCode);
  }
}