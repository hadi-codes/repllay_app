// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GameDataImpl _$$GameDataImplFromJson(Map<String, dynamic> json) =>
    _$GameDataImpl(
      gameSessionId: json['GameSessionId'] as String?,
      utcTimeStartedMatch: json['UtcTimeStartedMatch'] == null
          ? null
          : DateTime.parse(json['UtcTimeStartedMatch'] as String),
      matchEndTime: json['MatchEndTime'] as num?,
      mapInfo: json['MapInfo'],
      currentPlaylist: json['CurrentPlaylist'] as String?,
      additionalPlaylistLevels: json['AdditionalPlaylistLevels'],
      activeGameplayModifiers:
          (json['ActiveGameplayModifiers'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
      recorderId: json['RecorderId'] as num?,
      maxPlayers: json['MaxPlayers'] as num?,
      totalTeams: json['TotalTeams'] as num?,
      totalBots: json['TotalBots'] as num?,
      teamSize: json['TeamSize'] as int?,
      totalPlayerStructures: json['TotalPlayerStructures'] as int?,
      isTournamentRound: json['IsTournamentRound'] as bool?,
      tournamentRound: json['TournamentRound'],
      isLargeTeamGame: json['IsLargeTeamGame'] as bool?,
      aircraftStartTime: json['AircraftStartTime'],
      safeZonesStartTime: json['SafeZonesStartTime'],
      winningTeam: json['WinningTeam'],
      winningPlayerIds: json['WinningPlayerIds'],
    );

Map<String, dynamic> _$$GameDataImplToJson(_$GameDataImpl instance) =>
    <String, dynamic>{
      'GameSessionId': instance.gameSessionId,
      'UtcTimeStartedMatch': instance.utcTimeStartedMatch?.toIso8601String(),
      'MatchEndTime': instance.matchEndTime,
      'MapInfo': instance.mapInfo,
      'CurrentPlaylist': instance.currentPlaylist,
      'AdditionalPlaylistLevels': instance.additionalPlaylistLevels,
      'ActiveGameplayModifiers': instance.activeGameplayModifiers,
      'RecorderId': instance.recorderId,
      'MaxPlayers': instance.maxPlayers,
      'TotalTeams': instance.totalTeams,
      'TotalBots': instance.totalBots,
      'TeamSize': instance.teamSize,
      'TotalPlayerStructures': instance.totalPlayerStructures,
      'IsTournamentRound': instance.isTournamentRound,
      'TournamentRound': instance.tournamentRound,
      'IsLargeTeamGame': instance.isLargeTeamGame,
      'AircraftStartTime': instance.aircraftStartTime,
      'SafeZonesStartTime': instance.safeZonesStartTime,
      'WinningTeam': instance.winningTeam,
      'WinningPlayerIds': instance.winningPlayerIds,
    };
