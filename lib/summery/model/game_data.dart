import 'package:freezed_annotation/freezed_annotation.dart';
part 'game_data.freezed.dart';
part 'game_data.g.dart';

@freezed
class GameData with _$GameData {
  const factory GameData({
    String? gameSessionId,
    DateTime? utcTimeStartedMatch,
    num? matchEndTime,
    dynamic mapInfo,
    String? currentPlaylist,
    dynamic additionalPlaylistLevels,
    List<String>? activeGameplayModifiers,
    num? recorderId,
    num? maxPlayers,
    num? totalTeams,
    num? totalBots,
    int? teamSize,
    int? totalPlayerStructures,
    bool? isTournamentRound,
    dynamic tournamentRound,
    bool? isLargeTeamGame,
    dynamic aircraftStartTime,
    dynamic safeZonesStartTime,
    dynamic winningTeam,
    dynamic winningPlayerIds,
  }) = _GameData;
  const GameData._();

  factory GameData.fromJson(Map<String, dynamic> json) =>
      _$GameDataFromJson(json);

  String get currentPlaylistName {
    switch (currentPlaylist) {
      case 'Playlist_Habanerosolo':
      case 'playlist_solos':
        return 'Solo';
      case 'Playlist_Habaneroduo':
      case 'playlist_duos':
        return 'Duo';
      case 'Playlist_Habanerotrio':
      case 'playlist_trios':
        return 'Trio';
      case 'Playlist_Habanerosquad':
      case 'playlist_squads':
        return 'Squad';

      default:
        return currentPlaylist ?? 'Unknown';
    }
  }
}
