// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'table_map.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TableMap _$TableMapFromJson(Map<String, dynamic> json) {
  return _TableMap.fromJson(json);
}

/// @nodoc
mixin _$TableMap {
  String? get value => throw _privateConstructorUsedError;
  int? get answerIndex => throw _privateConstructorUsedError;
  int? get number => throw _privateConstructorUsedError;
  Direction get direction => throw _privateConstructorUsedError;
  bool? get isAnswered => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TableMapCopyWith<TableMap> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TableMapCopyWith<$Res> {
  factory $TableMapCopyWith(TableMap value, $Res Function(TableMap) then) =
      _$TableMapCopyWithImpl<$Res, TableMap>;
  @useResult
  $Res call(
      {String? value,
      int? answerIndex,
      int? number,
      Direction direction,
      bool? isAnswered});

  $DirectionCopyWith<$Res> get direction;
}

/// @nodoc
class _$TableMapCopyWithImpl<$Res, $Val extends TableMap>
    implements $TableMapCopyWith<$Res> {
  _$TableMapCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? answerIndex = freezed,
    Object? number = freezed,
    Object? direction = null,
    Object? isAnswered = freezed,
  }) {
    return _then(_value.copyWith(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      answerIndex: freezed == answerIndex
          ? _value.answerIndex
          : answerIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
      direction: null == direction
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as Direction,
      isAnswered: freezed == isAnswered
          ? _value.isAnswered
          : isAnswered // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DirectionCopyWith<$Res> get direction {
    return $DirectionCopyWith<$Res>(_value.direction, (value) {
      return _then(_value.copyWith(direction: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TableMapImplCopyWith<$Res>
    implements $TableMapCopyWith<$Res> {
  factory _$$TableMapImplCopyWith(
          _$TableMapImpl value, $Res Function(_$TableMapImpl) then) =
      __$$TableMapImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? value,
      int? answerIndex,
      int? number,
      Direction direction,
      bool? isAnswered});

  @override
  $DirectionCopyWith<$Res> get direction;
}

/// @nodoc
class __$$TableMapImplCopyWithImpl<$Res>
    extends _$TableMapCopyWithImpl<$Res, _$TableMapImpl>
    implements _$$TableMapImplCopyWith<$Res> {
  __$$TableMapImplCopyWithImpl(
      _$TableMapImpl _value, $Res Function(_$TableMapImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? answerIndex = freezed,
    Object? number = freezed,
    Object? direction = null,
    Object? isAnswered = freezed,
  }) {
    return _then(_$TableMapImpl(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      answerIndex: freezed == answerIndex
          ? _value.answerIndex
          : answerIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
      direction: null == direction
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as Direction,
      isAnswered: freezed == isAnswered
          ? _value.isAnswered
          : isAnswered // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TableMapImpl implements _TableMap {
  const _$TableMapImpl(
      {required this.value,
      required this.answerIndex,
      required this.number,
      required this.direction,
      required this.isAnswered});

  factory _$TableMapImpl.fromJson(Map<String, dynamic> json) =>
      _$$TableMapImplFromJson(json);

  @override
  final String? value;
  @override
  final int? answerIndex;
  @override
  final int? number;
  @override
  final Direction direction;
  @override
  final bool? isAnswered;

  @override
  String toString() {
    return 'TableMap(value: $value, answerIndex: $answerIndex, number: $number, direction: $direction, isAnswered: $isAnswered)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TableMapImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.answerIndex, answerIndex) ||
                other.answerIndex == answerIndex) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.direction, direction) ||
                other.direction == direction) &&
            (identical(other.isAnswered, isAnswered) ||
                other.isAnswered == isAnswered));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, value, answerIndex, number, direction, isAnswered);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TableMapImplCopyWith<_$TableMapImpl> get copyWith =>
      __$$TableMapImplCopyWithImpl<_$TableMapImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TableMapImplToJson(
      this,
    );
  }
}

abstract class _TableMap implements TableMap {
  const factory _TableMap(
      {required final String? value,
      required final int? answerIndex,
      required final int? number,
      required final Direction direction,
      required final bool? isAnswered}) = _$TableMapImpl;

  factory _TableMap.fromJson(Map<String, dynamic> json) =
      _$TableMapImpl.fromJson;

  @override
  String? get value;
  @override
  int? get answerIndex;
  @override
  int? get number;
  @override
  Direction get direction;
  @override
  bool? get isAnswered;
  @override
  @JsonKey(ignore: true)
  _$$TableMapImplCopyWith<_$TableMapImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
