import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'translationResponse.freezed.dart';
part 'translationResponse.g.dart';

@freezed
class TranslationResponse with _$TranslationResponse {
    const factory TranslationResponse({
        @JsonKey(name: "data")
        Data? data,
    }) = _TranslationResponse;

    factory TranslationResponse.fromJson(Map<String, dynamic> json) => _$TranslationResponseFromJson(json);
}

@freezed
class Data with _$Data {
    const factory Data({
        @JsonKey(name: "translations")
        List<Translation>? translations,
    }) = _Data;

    factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class Translation with _$Translation {
    const factory Translation({
        @JsonKey(name: "translatedText")
        String? translatedText,
        @JsonKey(name: "detectedSourceLanguage")
        String? detectedSourceLanguage,
    }) = _Translation;

    factory Translation.fromJson(Map<String, dynamic> json) => _$TranslationFromJson(json);
}
