import 'package:freezed_annotation/freezed_annotation.dart';

part 'direction.freezed.dart';
part 'direction.g.dart';

@freezed
class Direction with _$Direction {
  const factory Direction({
    required bool horizontal,
    required bool vertical,
  }) = _Direction;

  factory Direction.fromJson(Map<String, dynamic> json) =>
      _$DirectionFromJson(json);
}
