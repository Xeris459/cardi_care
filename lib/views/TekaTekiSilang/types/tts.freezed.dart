// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tts.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Tts _$TtsFromJson(Map<String, dynamic> json) {
  return _Tts.fromJson(json);
}

/// @nodoc
mixin _$Tts {
  bool get isLoading => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get col => throw _privateConstructorUsedError;
  int get row => throw _privateConstructorUsedError;
  List<ItemDatas> get items => throw _privateConstructorUsedError;
  List<List<TableMap>> get table => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TtsCopyWith<Tts> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TtsCopyWith<$Res> {
  factory $TtsCopyWith(Tts value, $Res Function(Tts) then) =
      _$TtsCopyWithImpl<$Res, Tts>;
  @useResult
  $Res call(
      {bool isLoading,
      String name,
      int col,
      int row,
      List<ItemDatas> items,
      List<List<TableMap>> table});
}

/// @nodoc
class _$TtsCopyWithImpl<$Res, $Val extends Tts> implements $TtsCopyWith<$Res> {
  _$TtsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? name = null,
    Object? col = null,
    Object? row = null,
    Object? items = null,
    Object? table = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      col: null == col
          ? _value.col
          : col // ignore: cast_nullable_to_non_nullable
              as int,
      row: null == row
          ? _value.row
          : row // ignore: cast_nullable_to_non_nullable
              as int,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ItemDatas>,
      table: null == table
          ? _value.table
          : table // ignore: cast_nullable_to_non_nullable
              as List<List<TableMap>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TtsImplCopyWith<$Res> implements $TtsCopyWith<$Res> {
  factory _$$TtsImplCopyWith(_$TtsImpl value, $Res Function(_$TtsImpl) then) =
      __$$TtsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      String name,
      int col,
      int row,
      List<ItemDatas> items,
      List<List<TableMap>> table});
}

/// @nodoc
class __$$TtsImplCopyWithImpl<$Res> extends _$TtsCopyWithImpl<$Res, _$TtsImpl>
    implements _$$TtsImplCopyWith<$Res> {
  __$$TtsImplCopyWithImpl(_$TtsImpl _value, $Res Function(_$TtsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? name = null,
    Object? col = null,
    Object? row = null,
    Object? items = null,
    Object? table = null,
  }) {
    return _then(_$TtsImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      col: null == col
          ? _value.col
          : col // ignore: cast_nullable_to_non_nullable
              as int,
      row: null == row
          ? _value.row
          : row // ignore: cast_nullable_to_non_nullable
              as int,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ItemDatas>,
      table: null == table
          ? _value._table
          : table // ignore: cast_nullable_to_non_nullable
              as List<List<TableMap>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TtsImpl implements _Tts {
  const _$TtsImpl(
      {required this.isLoading,
      required this.name,
      required this.col,
      required this.row,
      required final List<ItemDatas> items,
      required final List<List<TableMap>> table})
      : _items = items,
        _table = table;

  factory _$TtsImpl.fromJson(Map<String, dynamic> json) =>
      _$$TtsImplFromJson(json);

  @override
  final bool isLoading;
  @override
  final String name;
  @override
  final int col;
  @override
  final int row;
  final List<ItemDatas> _items;
  @override
  List<ItemDatas> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  final List<List<TableMap>> _table;
  @override
  List<List<TableMap>> get table {
    if (_table is EqualUnmodifiableListView) return _table;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_table);
  }

  @override
  String toString() {
    return 'Tts(isLoading: $isLoading, name: $name, col: $col, row: $row, items: $items, table: $table)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TtsImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.col, col) || other.col == col) &&
            (identical(other.row, row) || other.row == row) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            const DeepCollectionEquality().equals(other._table, _table));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      name,
      col,
      row,
      const DeepCollectionEquality().hash(_items),
      const DeepCollectionEquality().hash(_table));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TtsImplCopyWith<_$TtsImpl> get copyWith =>
      __$$TtsImplCopyWithImpl<_$TtsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TtsImplToJson(
      this,
    );
  }
}

abstract class _Tts implements Tts {
  const factory _Tts(
      {required final bool isLoading,
      required final String name,
      required final int col,
      required final int row,
      required final List<ItemDatas> items,
      required final List<List<TableMap>> table}) = _$TtsImpl;

  factory _Tts.fromJson(Map<String, dynamic> json) = _$TtsImpl.fromJson;

  @override
  bool get isLoading;
  @override
  String get name;
  @override
  int get col;
  @override
  int get row;
  @override
  List<ItemDatas> get items;
  @override
  List<List<TableMap>> get table;
  @override
  @JsonKey(ignore: true)
  _$$TtsImplCopyWith<_$TtsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
