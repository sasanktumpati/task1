// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseModelImpl _$$ResponseModelImplFromJson(Map<String, dynamic> json) =>
    _$ResponseModelImpl(
      id: json['id'] as String?,
      type: json['type'] as String?,
      rating: json['rating'] as String?,
      question: json['question'] as String?,
      translations: json['translations'] == null
          ? null
          : Translations.fromJson(json['translations'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ResponseModelImplToJson(_$ResponseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'rating': instance.rating,
      'question': instance.question,
      'translations': instance.translations,
    };

_$TranslationsImpl _$$TranslationsImplFromJson(Map<String, dynamic> json) =>
    _$TranslationsImpl(
      bn: json['bn'] as String?,
      de: json['de'] as String?,
      es: json['es'] as String?,
      fr: json['fr'] as String?,
      hi: json['hi'] as String?,
      tl: json['tl'] as String?,
    );

Map<String, dynamic> _$$TranslationsImplToJson(_$TranslationsImpl instance) =>
    <String, dynamic>{
      'bn': instance.bn,
      'de': instance.de,
      'es': instance.es,
      'fr': instance.fr,
      'hi': instance.hi,
      'tl': instance.tl,
    };
