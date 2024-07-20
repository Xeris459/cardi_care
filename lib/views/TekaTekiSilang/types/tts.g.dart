// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TtsImpl _$$TtsImplFromJson(Map<String, dynamic> json) => _$TtsImpl(
      isLoading: json['isLoading'] as bool,
      name: json['name'] as String,
      col: (json['col'] as num).toInt(),
      row: (json['row'] as num).toInt(),
      items: (json['items'] as List<dynamic>)
          .map((e) => ItemDatas.fromJson(e as Map<String, dynamic>))
          .toList(),
      table: (json['table'] as List<dynamic>)
          .map((e) => (e as List<dynamic>)
              .map((e) => TableMap.fromJson(e as Map<String, dynamic>))
              .toList())
          .toList(),
    );

Map<String, dynamic> _$$TtsImplToJson(_$TtsImpl instance) => <String, dynamic>{
      'isLoading': instance.isLoading,
      'name': instance.name,
      'col': instance.col,
      'row': instance.row,
      'items': instance.items,
      'table': instance.table,
    };
