// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseModel _$ResponseModelFromJson(Map<String, dynamic> json) {
  return _ResponseModel.fromJson(json);
}

/// @nodoc
mixin _$ResponseModel {
  String? get id => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get rating => throw _privateConstructorUsedError;
  String? get question => throw _privateConstructorUsedError;
  Translations? get translations => throw _privateConstructorUsedError;

  /// Serializes this ResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResponseModelCopyWith<ResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseModelCopyWith<$Res> {
  factory $ResponseModelCopyWith(
          ResponseModel value, $Res Function(ResponseModel) then) =
      _$ResponseModelCopyWithImpl<$Res, ResponseModel>;
  @useResult
  $Res call(
      {String? id,
      String? type,
      String? rating,
      String? question,
      Translations? translations});

  $TranslationsCopyWith<$Res>? get translations;
}

/// @nodoc
class _$ResponseModelCopyWithImpl<$Res, $Val extends ResponseModel>
    implements $ResponseModelCopyWith<$Res> {
  _$ResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? rating = freezed,
    Object? question = freezed,
    Object? translations = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String?,
      question: freezed == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String?,
      translations: freezed == translations
          ? _value.translations
          : translations // ignore: cast_nullable_to_non_nullable
              as Translations?,
    ) as $Val);
  }

  /// Create a copy of ResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TranslationsCopyWith<$Res>? get translations {
    if (_value.translations == null) {
      return null;
    }

    return $TranslationsCopyWith<$Res>(_value.translations!, (value) {
      return _then(_value.copyWith(translations: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResponseModelImplCopyWith<$Res>
    implements $ResponseModelCopyWith<$Res> {
  factory _$$ResponseModelImplCopyWith(
          _$ResponseModelImpl value, $Res Function(_$ResponseModelImpl) then) =
      __$$ResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? type,
      String? rating,
      String? question,
      Translations? translations});

  @override
  $TranslationsCopyWith<$Res>? get translations;
}

/// @nodoc
class __$$ResponseModelImplCopyWithImpl<$Res>
    extends _$ResponseModelCopyWithImpl<$Res, _$ResponseModelImpl>
    implements _$$ResponseModelImplCopyWith<$Res> {
  __$$ResponseModelImplCopyWithImpl(
      _$ResponseModelImpl _value, $Res Function(_$ResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? rating = freezed,
    Object? question = freezed,
    Object? translations = freezed,
  }) {
    return _then(_$ResponseModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String?,
      question: freezed == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String?,
      translations: freezed == translations
          ? _value.translations
          : translations // ignore: cast_nullable_to_non_nullable
              as Translations?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseModelImpl implements _ResponseModel {
  const _$ResponseModelImpl(
      {this.id, this.type, this.rating, this.question, this.translations});

  factory _$ResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseModelImplFromJson(json);

  @override
  final String? id;
  @override
  final String? type;
  @override
  final String? rating;
  @override
  final String? question;
  @override
  final Translations? translations;

  @override
  String toString() {
    return 'ResponseModel(id: $id, type: $type, rating: $rating, question: $question, translations: $translations)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.translations, translations) ||
                other.translations == translations));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, type, rating, question, translations);

  /// Create a copy of ResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseModelImplCopyWith<_$ResponseModelImpl> get copyWith =>
      __$$ResponseModelImplCopyWithImpl<_$ResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseModelImplToJson(
      this,
    );
  }
}

abstract class _ResponseModel implements ResponseModel {
  const factory _ResponseModel(
      {final String? id,
      final String? type,
      final String? rating,
      final String? question,
      final Translations? translations}) = _$ResponseModelImpl;

  factory _ResponseModel.fromJson(Map<String, dynamic> json) =
      _$ResponseModelImpl.fromJson;

  @override
  String? get id;
  @override
  String? get type;
  @override
  String? get rating;
  @override
  String? get question;
  @override
  Translations? get translations;

  /// Create a copy of ResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResponseModelImplCopyWith<_$ResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Translations _$TranslationsFromJson(Map<String, dynamic> json) {
  return _Translations.fromJson(json);
}

/// @nodoc
mixin _$Translations {
  String? get bn => throw _privateConstructorUsedError;
  String? get de => throw _privateConstructorUsedError;
  String? get es => throw _privateConstructorUsedError;
  String? get fr => throw _privateConstructorUsedError;
  String? get hi => throw _privateConstructorUsedError;
  String? get tl => throw _privateConstructorUsedError;

  /// Serializes this Translations to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Translations
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TranslationsCopyWith<Translations> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TranslationsCopyWith<$Res> {
  factory $TranslationsCopyWith(
          Translations value, $Res Function(Translations) then) =
      _$TranslationsCopyWithImpl<$Res, Translations>;
  @useResult
  $Res call(
      {String? bn, String? de, String? es, String? fr, String? hi, String? tl});
}

/// @nodoc
class _$TranslationsCopyWithImpl<$Res, $Val extends Translations>
    implements $TranslationsCopyWith<$Res> {
  _$TranslationsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Translations
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bn = freezed,
    Object? de = freezed,
    Object? es = freezed,
    Object? fr = freezed,
    Object? hi = freezed,
    Object? tl = freezed,
  }) {
    return _then(_value.copyWith(
      bn: freezed == bn
          ? _value.bn
          : bn // ignore: cast_nullable_to_non_nullable
              as String?,
      de: freezed == de
          ? _value.de
          : de // ignore: cast_nullable_to_non_nullable
              as String?,
      es: freezed == es
          ? _value.es
          : es // ignore: cast_nullable_to_non_nullable
              as String?,
      fr: freezed == fr
          ? _value.fr
          : fr // ignore: cast_nullable_to_non_nullable
              as String?,
      hi: freezed == hi
          ? _value.hi
          : hi // ignore: cast_nullable_to_non_nullable
              as String?,
      tl: freezed == tl
          ? _value.tl
          : tl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TranslationsImplCopyWith<$Res>
    implements $TranslationsCopyWith<$Res> {
  factory _$$TranslationsImplCopyWith(
          _$TranslationsImpl value, $Res Function(_$TranslationsImpl) then) =
      __$$TranslationsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? bn, String? de, String? es, String? fr, String? hi, String? tl});
}

/// @nodoc
class __$$TranslationsImplCopyWithImpl<$Res>
    extends _$TranslationsCopyWithImpl<$Res, _$TranslationsImpl>
    implements _$$TranslationsImplCopyWith<$Res> {
  __$$TranslationsImplCopyWithImpl(
      _$TranslationsImpl _value, $Res Function(_$TranslationsImpl) _then)
      : super(_value, _then);

  /// Create a copy of Translations
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bn = freezed,
    Object? de = freezed,
    Object? es = freezed,
    Object? fr = freezed,
    Object? hi = freezed,
    Object? tl = freezed,
  }) {
    return _then(_$TranslationsImpl(
      bn: freezed == bn
          ? _value.bn
          : bn // ignore: cast_nullable_to_non_nullable
              as String?,
      de: freezed == de
          ? _value.de
          : de // ignore: cast_nullable_to_non_nullable
              as String?,
      es: freezed == es
          ? _value.es
          : es // ignore: cast_nullable_to_non_nullable
              as String?,
      fr: freezed == fr
          ? _value.fr
          : fr // ignore: cast_nullable_to_non_nullable
              as String?,
      hi: freezed == hi
          ? _value.hi
          : hi // ignore: cast_nullable_to_non_nullable
              as String?,
      tl: freezed == tl
          ? _value.tl
          : tl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TranslationsImpl implements _Translations {
  const _$TranslationsImpl(
      {this.bn, this.de, this.es, this.fr, this.hi, this.tl});

  factory _$TranslationsImpl.fromJson(Map<String, dynamic> json) =>
      _$$TranslationsImplFromJson(json);

  @override
  final String? bn;
  @override
  final String? de;
  @override
  final String? es;
  @override
  final String? fr;
  @override
  final String? hi;
  @override
  final String? tl;

  @override
  String toString() {
    return 'Translations(bn: $bn, de: $de, es: $es, fr: $fr, hi: $hi, tl: $tl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TranslationsImpl &&
            (identical(other.bn, bn) || other.bn == bn) &&
            (identical(other.de, de) || other.de == de) &&
            (identical(other.es, es) || other.es == es) &&
            (identical(other.fr, fr) || other.fr == fr) &&
            (identical(other.hi, hi) || other.hi == hi) &&
            (identical(other.tl, tl) || other.tl == tl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, bn, de, es, fr, hi, tl);

  /// Create a copy of Translations
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TranslationsImplCopyWith<_$TranslationsImpl> get copyWith =>
      __$$TranslationsImplCopyWithImpl<_$TranslationsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TranslationsImplToJson(
      this,
    );
  }
}

abstract class _Translations implements Translations {
  const factory _Translations(
      {final String? bn,
      final String? de,
      final String? es,
      final String? fr,
      final String? hi,
      final String? tl}) = _$TranslationsImpl;

  factory _Translations.fromJson(Map<String, dynamic> json) =
      _$TranslationsImpl.fromJson;

  @override
  String? get bn;
  @override
  String? get de;
  @override
  String? get es;
  @override
  String? get fr;
  @override
  String? get hi;
  @override
  String? get tl;

  /// Create a copy of Translations
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TranslationsImplCopyWith<_$TranslationsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
