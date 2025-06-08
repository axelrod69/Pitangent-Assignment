// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'languageCodeState.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LanguageCodeState {
  List<LanguageCode>? get languageCode => throw _privateConstructorUsedError;

  /// Create a copy of LanguageCodeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LanguageCodeStateCopyWith<LanguageCodeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageCodeStateCopyWith<$Res> {
  factory $LanguageCodeStateCopyWith(
          LanguageCodeState value, $Res Function(LanguageCodeState) then) =
      _$LanguageCodeStateCopyWithImpl<$Res, LanguageCodeState>;
  @useResult
  $Res call({List<LanguageCode>? languageCode});
}

/// @nodoc
class _$LanguageCodeStateCopyWithImpl<$Res, $Val extends LanguageCodeState>
    implements $LanguageCodeStateCopyWith<$Res> {
  _$LanguageCodeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LanguageCodeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? languageCode = freezed,
  }) {
    return _then(_value.copyWith(
      languageCode: freezed == languageCode
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as List<LanguageCode>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LanguageCodeStateImplCopyWith<$Res>
    implements $LanguageCodeStateCopyWith<$Res> {
  factory _$$LanguageCodeStateImplCopyWith(_$LanguageCodeStateImpl value,
          $Res Function(_$LanguageCodeStateImpl) then) =
      __$$LanguageCodeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<LanguageCode>? languageCode});
}

/// @nodoc
class __$$LanguageCodeStateImplCopyWithImpl<$Res>
    extends _$LanguageCodeStateCopyWithImpl<$Res, _$LanguageCodeStateImpl>
    implements _$$LanguageCodeStateImplCopyWith<$Res> {
  __$$LanguageCodeStateImplCopyWithImpl(_$LanguageCodeStateImpl _value,
      $Res Function(_$LanguageCodeStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of LanguageCodeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? languageCode = freezed,
  }) {
    return _then(_$LanguageCodeStateImpl(
      languageCode: freezed == languageCode
          ? _value._languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as List<LanguageCode>?,
    ));
  }
}

/// @nodoc

class _$LanguageCodeStateImpl implements _LanguageCodeState {
  _$LanguageCodeStateImpl({final List<LanguageCode>? languageCode})
      : _languageCode = languageCode;

  final List<LanguageCode>? _languageCode;
  @override
  List<LanguageCode>? get languageCode {
    final value = _languageCode;
    if (value == null) return null;
    if (_languageCode is EqualUnmodifiableListView) return _languageCode;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'LanguageCodeState(languageCode: $languageCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LanguageCodeStateImpl &&
            const DeepCollectionEquality()
                .equals(other._languageCode, _languageCode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_languageCode));

  /// Create a copy of LanguageCodeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LanguageCodeStateImplCopyWith<_$LanguageCodeStateImpl> get copyWith =>
      __$$LanguageCodeStateImplCopyWithImpl<_$LanguageCodeStateImpl>(
          this, _$identity);
}

abstract class _LanguageCodeState implements LanguageCodeState {
  factory _LanguageCodeState({final List<LanguageCode>? languageCode}) =
      _$LanguageCodeStateImpl;

  @override
  List<LanguageCode>? get languageCode;

  /// Create a copy of LanguageCodeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LanguageCodeStateImplCopyWith<_$LanguageCodeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
