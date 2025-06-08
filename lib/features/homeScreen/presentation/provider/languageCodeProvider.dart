import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/features/homeScreen/domain/model/languageCode.dart';
import 'package:movie_app/features/homeScreen/presentation/states/languageCodeState.dart';

class LanguageCodeProvider extends StateNotifier<LanguageCodeState> {
  LanguageCodeProvider() : super(LanguageCodeState.initial()) {
    languageCode();
  }

  void languageCode() {
    final List<LanguageCode> languageCode = [
      LanguageCode(language: 'Bengali', languageCode: 'bn'),
      LanguageCode(language: 'Hindi', languageCode: 'hi'),
      LanguageCode(language: 'Punjabi', languageCode: 'pa'),
      LanguageCode(language: 'Portuguese', languageCode: 'ru'),
      LanguageCode(language: 'Russian', languageCode: 'ru'),
      LanguageCode(language: 'German', languageCode: 'de'),
    ];

    state = state.copyWith(languageCode: languageCode);
  }
}

final languageCodeProvider =
    StateNotifierProvider<LanguageCodeProvider, LanguageCodeState>(
        (ref) => LanguageCodeProvider());

final selectedLanguageProvider = StateProvider<LanguageCode?>((ref) => null);        
