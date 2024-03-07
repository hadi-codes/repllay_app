import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:repllay_app/summery/summery.dart';
part 'replay_summary.freezed.dart';
part 'replay_summary.g.dart';

@freezed
class ReplaySummary with _$ReplaySummary {
  const factory ReplaySummary({
    List<PlayerData>? playerData,
    GameData? gameData,
    @Default(<KillFeedEntry>[]) List<KillFeedEntry> killFeed,
  }) = _ReplaySummary;

  const ReplaySummary._();
  factory ReplaySummary.fromJson(Map<String, dynamic> json) =>
      _$ReplaySummaryFromJson(json);

  Map<String, PlayerData> get playerDataMap {
    final map = <String, PlayerData>{};
    for (final player in playerData ?? <PlayerData>[]) {
      final playerId = player.playerId;
      if (playerId == null) continue;
      map[player.playerId!] = player;
    }
    return map;
  }
}
