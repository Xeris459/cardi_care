// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_datas.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ItemDatasImpl _$$ItemDatasImplFromJson(Map<String, dynamic> json) =>
    _$ItemDatasImpl(
      title: json['title'] as String,
      answer: json['answer'] as String,
      direction: json['direction'] as String,
      startCol: (json['startCol'] as num).toInt(),
      startRow: (json['startRow'] as num).toInt(),
      number: (json['number'] as num).toInt(),
      isAnswered: json['isAnswered'] as bool,
    );

Map<String, dynamic> _$$ItemDatasImplToJson(_$ItemDatasImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'answer': instance.answer,
      'direction': instance.direction,
      'startCol': instance.startCol,
      'startRow': instance.startRow,
      'number': instance.number,
      'isAnswered': instance.isAnswered,
    };
