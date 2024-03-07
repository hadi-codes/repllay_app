// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'replay_summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReplaySummaryImpl _$$ReplaySummaryImplFromJson(Map<String, dynamic> json) =>
    _$ReplaySummaryImpl(
      playerData: (json['PlayerData'] as List<dynamic>?)
          ?.map((e) => PlayerData.fromJson(e as Map<String, dynamic>))
          .toList(),
      gameData: json['GameData'] == null
          ? null
          : GameData.fromJson(json['GameData'] as Map<String, dynamic>),
      killFeed: (json['KillFeed'] as List<dynamic>?)
              ?.map((e) => KillFeedEntry.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <KillFeedEntry>[],
    );

Map<String, dynamic> _$$ReplaySummaryImplToJson(_$ReplaySummaryImpl instance) =>
    <String, dynamic>{
      'PlayerData': instance.playerData,
      'GameData': instance.gameData,
      'KillFeed': instance.killFeed,
    };
