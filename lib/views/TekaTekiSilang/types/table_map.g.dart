// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'table_map.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TableMapImpl _$$TableMapImplFromJson(Map<String, dynamic> json) =>
    _$TableMapImpl(
      value: json['value'] as String?,
      answerIndex: (json['answerIndex'] as num?)?.toInt(),
      number: (json['number'] as num?)?.toInt(),
      direction: Direction.fromJson(json['direction'] as Map<String, dynamic>),
      isAnswered: json['isAnswered'] as bool?,
    );

Map<String, dynamic> _$$TableMapImplToJson(_$TableMapImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'answerIndex': instance.answerIndex,
      'number': instance.number,
      'direction': instance.direction,
      'isAnswered': instance.isAnswered,
    };
