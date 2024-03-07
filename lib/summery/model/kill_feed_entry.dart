import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:repllay_app/summery/summery.dart';
part 'kill_feed_entry.freezed.dart';
part 'kill_feed_entry.g.dart';

@freezed
class KillFeedEntry with _$KillFeedEntry {
  const factory KillFeedEntry({
    num? playerId,
    String? playerName,
    bool? playerIsBot,
    num? finisherOrDowner,
    String? finisherOrDownerName,
    bool? finisherOrDownerIsBot,
    num? replicatedWorldTimeSeconds,
    num? replicatedWorldTimeSecondsDouble,
    num? distance,
    num? deathCause,
    DeathLocation? deathLocation,
    dynamic deathCircumstance,
    List<String?>? deathTags,
    bool? isDowned,
    bool? isRevived,
  }) = _KillFeedEntry;

  factory KillFeedEntry.fromJson(Map<String, dynamic> json) =>
      _$KillFeedEntryFromJson(json);
}
