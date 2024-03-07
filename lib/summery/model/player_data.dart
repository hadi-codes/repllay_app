import 'package:freezed_annotation/freezed_annotation.dart';

part 'player_data.freezed.dart';
part 'player_data.g.dart';

@Freezed()
class PlayerData with _$PlayerData {
  const factory PlayerData({
    num? id,
    String? playerId,
    String? epicId,
    dynamic platformUniqueNetId,
    dynamic botId,
    bool? isBot,
    String? playerName,
    dynamic playerNameCustomOverride,
    dynamic streamerModeName,
    String? platform,
    num? level,
    num? seasonLevelUiDisplay,
    dynamic inventoryId,
    num? playerNumber,
    num? teamIndex,
    bool? isPartyLeader,
    bool? isReplayOwner,
    dynamic isGameSessionOwner,
    bool? hasFinishedLoading,
    bool? hasStartedPlaying,
    bool? hasThankedBusDriver,
    bool? isUsingStreamerMode,
    bool? isUsingAnonymousMode,
    dynamic disconnected,
    num? rebootCounter,
    num? placement,
    num? kills,
    num? teamKills,
    num? deathCause,
    dynamic deathCircumstance,
    List<String?>? deathTags,
    DeathLocation? deathLocation,
    num? deathTime,
    num? deathTimeDouble,
    Cosmetics? cosmetics,
    num? currentWeapon,
    List<dynamic>? locations,
  }) = _PlayerData;

  const PlayerData._();

  factory PlayerData.fromJson(Map<String, dynamic> json) =>
      _$PlayerDataFromJson(json);
}

@freezed
class Cosmetics with _$Cosmetics {
  const factory Cosmetics({
    num? characterGender,
    num? characterBodyType,
    String? parts,
    dynamic variantRequiredCharacterParts,
    String? heroType,
    String? bannerIconId,
    String? bannerColorId,
    List<String?>? itemWraps,
    String? skyDiveContrail,
    String? glider,
    String? pickaxe,
    dynamic isDefaultCharacter,
    String? character,
    dynamic backpack,
    dynamic loadingScreen,
    List<String?>? dances,
    dynamic musicPack,
    dynamic petSkin,
  }) = _Cosmetics;

  factory Cosmetics.fromJson(Map<String, dynamic> json) =>
      _$CosmeticsFromJson(json);
}

@freezed
class DeathLocation with _$DeathLocation {
  const factory DeathLocation({
    num? x,
    num? y,
    num? z,
    num? scaleFactor,
    num? bits,
  }) = _DeathLocation;

  factory DeathLocation.fromJson(Map<String, dynamic> json) =>
      _$DeathLocationFromJson(json);
}
