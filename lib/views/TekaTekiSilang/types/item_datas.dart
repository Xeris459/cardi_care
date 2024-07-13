import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_datas.freezed.dart';
part 'item_datas.g.dart';

@freezed
class ItemDatas with _$ItemDatas {
  const factory ItemDatas({
    required String title,
    required String answer,
    required String direction,
    required int startCol,
    required int startRow,
    required int number,
    required bool isAnswered,
  }) = _ItemDatas;

  factory ItemDatas.fromJson(Map<String, dynamic> json) =>
      _$ItemDatasFromJson(json);
}
