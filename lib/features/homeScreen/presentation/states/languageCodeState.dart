import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/features/homeScreen/domain/model/languageCode.dart';

part 'languageCodeState.freezed.dart';

@freezed
class LanguageCodeState with _$LanguageCodeState {
  factory LanguageCodeState({List<LanguageCode>? languageCode}) =
      _LanguageCodeState;

  factory LanguageCodeState.initial() => LanguageCodeState(languageCode: []);
  
}
