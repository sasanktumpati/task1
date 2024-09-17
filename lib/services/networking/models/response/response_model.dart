import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'response_model.freezed.dart';
part 'response_model.g.dart';

ResponseModel responseModelFromJson(String str) =>
    ResponseModel.fromJson(json.decode(str));

String responseModelToJson(ResponseModel data) => json.encode(data.toJson());

@freezed
class ResponseModel with _$ResponseModel {
  const factory ResponseModel({
    String? id,
    String? type,
    String? rating,
    String? question,
    Translations? translations,
  }) = _ResponseModel;

  factory ResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ResponseModelFromJson(json);
}

@freezed
class Translations with _$Translations {
  const factory Translations({
    String? bn,
    String? de,
    String? es,
    String? fr,
    String? hi,
    String? tl,
  }) = _Translations;

  factory Translations.fromJson(Map<String, dynamic> json) =>
      _$TranslationsFromJson(json);
}
