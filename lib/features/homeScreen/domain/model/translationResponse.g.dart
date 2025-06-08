// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'translationResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TranslationResponseImpl _$$TranslationResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$TranslationResponseImpl(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TranslationResponseImplToJson(
        _$TranslationResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      translations: (json['translations'] as List<dynamic>?)
          ?.map((e) => Translation.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'translations': instance.translations,
    };

_$TranslationImpl _$$TranslationImplFromJson(Map<String, dynamic> json) =>
    _$TranslationImpl(
      translatedText: json['translatedText'] as String?,
      detectedSourceLanguage: json['detectedSourceLanguage'] as String?,
    );

Map<String, dynamic> _$$TranslationImplToJson(_$TranslationImpl instance) =>
    <String, dynamic>{
      'translatedText': instance.translatedText,
      'detectedSourceLanguage': instance.detectedSourceLanguage,
    };
