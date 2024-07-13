import 'package:freezed_annotation/freezed_annotation.dart';
import 'direction.dart';

part 'table_map.freezed.dart';
part 'table_map.g.dart';

@freezed
class TableMap with _$TableMap {
  const factory TableMap({
    required String? value,
    required int? answerIndex,
    required int? number,
    required Direction direction,
    required bool? isAnswered,
  }) = _TableMap;

  factory TableMap.fromJson(Map<String, dynamic> json) =>
      _$TableMapFromJson(json);
}
