// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'extra_data.freezed.dart';
part 'extra_data.g.dart';

@freezed
class ExtraData with _$ExtraData {
  factory ExtraData({
    @JsonKey(name: 'bannedInCommunity') bool? isBanned,
  }) = _ExtraData;

  factory ExtraData.fromJson(Map<String, dynamic> json) =>
      _$ExtraDataFromJson(json);

  factory ExtraData.initial() => ExtraData(
        isBanned: false,
      );
}
