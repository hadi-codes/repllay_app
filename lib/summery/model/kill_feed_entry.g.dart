// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kill_feed_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$KillFeedEntryImpl _$$KillFeedEntryImplFromJson(Map<String, dynamic> json) =>
    _$KillFeedEntryImpl(
      playerId: json['PlayerId'] as num?,
      playerName: json['PlayerName'] as String?,
      playerIsBot: json['PlayerIsBot'] as bool?,
      finisherOrDowner: json['FinisherOrDowner'] as num?,
      finisherOrDownerName: json['FinisherOrDownerName'] as String?,
      finisherOrDownerIsBot: json['FinisherOrDownerIsBot'] as bool?,
      replicatedWorldTimeSeconds: json['ReplicatedWorldTimeSeconds'] as num?,
      replicatedWorldTimeSecondsDouble:
          json['ReplicatedWorldTimeSecondsDouble'] as num?,
      distance: json['Distance'] as num?,
      deathCause: json['DeathCause'] as num?,
      deathLocation: json['DeathLocation'] == null
          ? null
          : DeathLocation.fromJson(
              json['DeathLocation'] as Map<String, dynamic>),
      deathCircumstance: json['DeathCircumstance'],
      deathTags: (json['DeathTags'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      isDowned: json['IsDowned'] as bool?,
      isRevived: json['IsRevived'] as bool?,
    );

Map<String, dynamic> _$$KillFeedEntryImplToJson(_$KillFeedEntryImpl instance) =>
    <String, dynamic>{
      'PlayerId': instance.playerId,
      'PlayerName': instance.playerName,
      'PlayerIsBot': instance.playerIsBot,
      'FinisherOrDowner': instance.finisherOrDowner,
      'FinisherOrDownerName': instance.finisherOrDownerName,
      'FinisherOrDownerIsBot': instance.finisherOrDownerIsBot,
      'ReplicatedWorldTimeSeconds': instance.replicatedWorldTimeSeconds,
      'ReplicatedWorldTimeSecondsDouble':
          instance.replicatedWorldTimeSecondsDouble,
      'Distance': instance.distance,
      'DeathCause': instance.deathCause,
      'DeathLocation': instance.deathLocation,
      'DeathCircumstance': instance.deathCircumstance,
      'DeathTags': instance.deathTags,
      'IsDowned': instance.isDowned,
      'IsRevived': instance.isRevived,
    };
