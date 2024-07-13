// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_datas.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ItemDatas _$ItemDatasFromJson(Map<String, dynamic> json) {
  return _ItemDatas.fromJson(json);
}

/// @nodoc
mixin _$ItemDatas {
  String get title => throw _privateConstructorUsedError;
  String get answer => throw _privateConstructorUsedError;
  String get direction => throw _privateConstructorUsedError;
  int get startCol => throw _privateConstructorUsedError;
  int get startRow => throw _privateConstructorUsedError;
  int get number => throw _privateConstructorUsedError;
  bool get isAnswered => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemDatasCopyWith<ItemDatas> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemDatasCopyWith<$Res> {
  factory $ItemDatasCopyWith(ItemDatas value, $Res Function(ItemDatas) then) =
      _$ItemDatasCopyWithImpl<$Res, ItemDatas>;
  @useResult
  $Res call(
      {String title,
      String answer,
      String direction,
      int startCol,
      int startRow,
      int number,
      bool isAnswered});
}

/// @nodoc
class _$ItemDatasCopyWithImpl<$Res, $Val extends ItemDatas>
    implements $ItemDatasCopyWith<$Res> {
  _$ItemDatasCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? answer = null,
    Object? direction = null,
    Object? startCol = null,
    Object? startRow = null,
    Object? number = null,
    Object? isAnswered = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
      direction: null == direction
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as String,
      startCol: null == startCol
          ? _value.startCol
          : startCol // ignore: cast_nullable_to_non_nullable
              as int,
      startRow: null == startRow
          ? _value.startRow
          : startRow // ignore: cast_nullable_to_non_nullable
              as int,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      isAnswered: null == isAnswered
          ? _value.isAnswered
          : isAnswered // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ItemDatasImplCopyWith<$Res>
    implements $ItemDatasCopyWith<$Res> {
  factory _$$ItemDatasImplCopyWith(
          _$ItemDatasImpl value, $Res Function(_$ItemDatasImpl) then) =
      __$$ItemDatasImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String answer,
      String direction,
      int startCol,
      int startRow,
      int number,
      bool isAnswered});
}

/// @nodoc
class __$$ItemDatasImplCopyWithImpl<$Res>
    extends _$ItemDatasCopyWithImpl<$Res, _$ItemDatasImpl>
    implements _$$ItemDatasImplCopyWith<$Res> {
  __$$ItemDatasImplCopyWithImpl(
      _$ItemDatasImpl _value, $Res Function(_$ItemDatasImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? answer = null,
    Object? direction = null,
    Object? startCol = null,
    Object? startRow = null,
    Object? number = null,
    Object? isAnswered = null,
  }) {
    return _then(_$ItemDatasImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
      direction: null == direction
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as String,
      startCol: null == startCol
          ? _value.startCol
          : startCol // ignore: cast_nullable_to_non_nullable
              as int,
      startRow: null == startRow
          ? _value.startRow
          : startRow // ignore: cast_nullable_to_non_nullable
              as int,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      isAnswered: null == isAnswered
          ? _value.isAnswered
          : isAnswered // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ItemDatasImpl implements _ItemDatas {
  const _$ItemDatasImpl(
      {required this.title,
      required this.answer,
      required this.direction,
      required this.startCol,
      required this.startRow,
      required this.number,
      required this.isAnswered});

  factory _$ItemDatasImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemDatasImplFromJson(json);

  @override
  final String title;
  @override
  final String answer;
  @override
  final String direction;
  @override
  final int startCol;
  @override
  final int startRow;
  @override
  final int number;
  @override
  final bool isAnswered;

  @override
  String toString() {
    return 'ItemDatas(title: $title, answer: $answer, direction: $direction, startCol: $startCol, startRow: $startRow, number: $number, isAnswered: $isAnswered)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemDatasImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.answer, answer) || other.answer == answer) &&
            (identical(other.direction, direction) ||
                other.direction == direction) &&
            (identical(other.startCol, startCol) ||
                other.startCol == startCol) &&
            (identical(other.startRow, startRow) ||
                other.startRow == startRow) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.isAnswered, isAnswered) ||
                other.isAnswered == isAnswered));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, answer, direction,
      startCol, startRow, number, isAnswered);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemDatasImplCopyWith<_$ItemDatasImpl> get copyWith =>
      __$$ItemDatasImplCopyWithImpl<_$ItemDatasImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemDatasImplToJson(
      this,
    );
  }
}

abstract class _ItemDatas implements ItemDatas {
  const factory _ItemDatas(
      {required final String title,
      required final String answer,
      required final String direction,
      required final int startCol,
      required final int startRow,
      required final int number,
      required final bool isAnswered}) = _$ItemDatasImpl;

  factory _ItemDatas.fromJson(Map<String, dynamic> json) =
      _$ItemDatasImpl.fromJson;

  @override
  String get title;
  @override
  String get answer;
  @override
  String get direction;
  @override
  int get startCol;
  @override
  int get startRow;
  @override
  int get number;
  @override
  bool get isAnswered;
  @override
  @JsonKey(ignore: true)
  _$$ItemDatasImplCopyWith<_$ItemDatasImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
