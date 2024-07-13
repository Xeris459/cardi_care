// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'direction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Direction _$DirectionFromJson(Map<String, dynamic> json) {
  return _Direction.fromJson(json);
}

/// @nodoc
mixin _$Direction {
  bool get horizontal => throw _privateConstructorUsedError;
  bool get vertical => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DirectionCopyWith<Direction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DirectionCopyWith<$Res> {
  factory $DirectionCopyWith(Direction value, $Res Function(Direction) then) =
      _$DirectionCopyWithImpl<$Res, Direction>;
  @useResult
  $Res call({bool horizontal, bool vertical});
}

/// @nodoc
class _$DirectionCopyWithImpl<$Res, $Val extends Direction>
    implements $DirectionCopyWith<$Res> {
  _$DirectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? horizontal = null,
    Object? vertical = null,
  }) {
    return _then(_value.copyWith(
      horizontal: null == horizontal
          ? _value.horizontal
          : horizontal // ignore: cast_nullable_to_non_nullable
              as bool,
      vertical: null == vertical
          ? _value.vertical
          : vertical // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DirectionImplCopyWith<$Res>
    implements $DirectionCopyWith<$Res> {
  factory _$$DirectionImplCopyWith(
          _$DirectionImpl value, $Res Function(_$DirectionImpl) then) =
      __$$DirectionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool horizontal, bool vertical});
}

/// @nodoc
class __$$DirectionImplCopyWithImpl<$Res>
    extends _$DirectionCopyWithImpl<$Res, _$DirectionImpl>
    implements _$$DirectionImplCopyWith<$Res> {
  __$$DirectionImplCopyWithImpl(
      _$DirectionImpl _value, $Res Function(_$DirectionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? horizontal = null,
    Object? vertical = null,
  }) {
    return _then(_$DirectionImpl(
      horizontal: null == horizontal
          ? _value.horizontal
          : horizontal // ignore: cast_nullable_to_non_nullable
              as bool,
      vertical: null == vertical
          ? _value.vertical
          : vertical // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DirectionImpl implements _Direction {
  const _$DirectionImpl({required this.horizontal, required this.vertical});

  factory _$DirectionImpl.fromJson(Map<String, dynamic> json) =>
      _$$DirectionImplFromJson(json);

  @override
  final bool horizontal;
  @override
  final bool vertical;

  @override
  String toString() {
    return 'Direction(horizontal: $horizontal, vertical: $vertical)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DirectionImpl &&
            (identical(other.horizontal, horizontal) ||
                other.horizontal == horizontal) &&
            (identical(other.vertical, vertical) ||
                other.vertical == vertical));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, horizontal, vertical);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DirectionImplCopyWith<_$DirectionImpl> get copyWith =>
      __$$DirectionImplCopyWithImpl<_$DirectionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DirectionImplToJson(
      this,
    );
  }
}

abstract class _Direction implements Direction {
  const factory _Direction(
      {required final bool horizontal,
      required final bool vertical}) = _$DirectionImpl;

  factory _Direction.fromJson(Map<String, dynamic> json) =
      _$DirectionImpl.fromJson;

  @override
  bool get horizontal;
  @override
  bool get vertical;
  @override
  @JsonKey(ignore: true)
  _$$DirectionImplCopyWith<_$DirectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
