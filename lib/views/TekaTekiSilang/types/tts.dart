import 'item_datas.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'table_map.dart';

part 'tts.freezed.dart';
part 'tts.g.dart';

@freezed
class Tts with _$Tts {
  const factory Tts({
    required String name,
    required int col,
    required int row,
    required List<ItemDatas> items,
    required List<List<TableMap>> table,
  }) = _Tts;

  factory Tts.fromJson(Map<String, dynamic> json) => _$TtsFromJson(json);
}
