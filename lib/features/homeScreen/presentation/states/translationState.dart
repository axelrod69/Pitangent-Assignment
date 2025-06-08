import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/features/homeScreen/domain/model/translationResponse.dart';

part 'translationState.freezed.dart';

@freezed
class TranslationState with _$TranslationState {
  factory TranslationState({
    bool? isLoading,
    TranslationResponse? translationResponse
  }) = _TranslationState;

  factory TranslationState.initial() => TranslationState(isLoading: false);
}