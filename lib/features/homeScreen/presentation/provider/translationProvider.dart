import 'dart:convert';
import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/core/providers/dependencyInjection.dart';
import 'package:movie_app/core/utils/appLog.dart';
import 'package:movie_app/core/widgets/snackBar.dart';
import 'package:movie_app/features/homeScreen/domain/usecase/translationUsecase.dart';
import 'package:movie_app/features/homeScreen/presentation/states/translationState.dart';

class TranslationProvider extends StateNotifier<TranslationState> {
  final TranslationUseCase translationUseCase;

  TranslationProvider(this.translationUseCase)
      : super(TranslationState.initial());

  Future<void> checkTranslation(
      {required String? text, required String? languageCode}) async {
    state = state.copyWith(isLoading: true);

    AppLog.showLog(tag: 'text', message: text);
    AppLog.showLog(tag: 'languageCode', message: languageCode);


    try {
      var (response, dioError) = await translationUseCase.translate(
          text: text, languageCode: languageCode);

      state = state.copyWith(isLoading: false);

      if (response == null && dioError == null) {
      

        showConnectionInterrupted();
      } else if (dioError != null) {
      

        AppLog.showLog(object: dioError.toString());
        showDioError(e: dioError);
      } else {
     

        AppLog.showLog(tag: 'Translation', object: json.encode(response));

        state = state.copyWith(translationResponse: response);
      }
    } catch (error, stackTrace) {

  

      state = state.copyWith(isLoading: false);
      AppLog.showLog(object: error, stackTrace: stackTrace);

      showDioError(e: error);
    }
  }
}

final translationProvider =
    StateNotifierProvider<TranslationProvider, TranslationState>(
        (ref) => TranslationProvider(ref.read(translateTextUseCaseProvider)));
