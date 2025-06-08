import 'package:dio/dio.dart';
import 'package:movie_app/core/network/apiClient.dart';
import 'package:movie_app/core/network/url.dart';
import 'package:movie_app/core/utils/constant.dart';
import 'package:movie_app/features/homeScreen/domain/model/translationResponse.dart';

abstract class TranslationDatasource {
  Future<(TranslationResponse?, DioException?)> translate(
      {required String? text, required String? languageCode});
}

class TranslationDatasourceImpl implements TranslationDatasource {
  final BaseApiClient baseApiClient;

  TranslationDatasourceImpl(this.baseApiClient);

  @override
  Future<(TranslationResponse?, DioException?)> translate(
      {String? text, String? languageCode}) async {
    // TODO: implement translate

    final payload = {'q': text, 'target': languageCode};

    final (response, dioException) = await baseApiClient.post(
        url: '${Url.posts}?key=$googleApiKey', payload: payload);

    if (response != null && response.statusCode == 200) {
      return (TranslationResponse.fromJson(response.data), null);
    }

    return (null, dioException as DioException);
  }
}
