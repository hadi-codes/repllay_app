// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlayerDataImpl _$$PlayerDataImplFromJson(Map<String, dynamic> json) =>
    _$PlayerDataImpl(
      id: json['Id'] as num?,
      playerId: json['PlayerId'] as String?,
      epicId: json['EpicId'] as String?,
      platformUniqueNetId: json['PlatformUniqueNetId'],
      botId: json['BotId'],
      isBot: json['IsBot'] as bool?,
      playerName: json['PlayerName'] as String?,
      playerNameCustomOverride: json['PlayerNameCustomOverride'],
      streamerModeName: json['StreamerModeName'],
      platform: json['Platform'] as String?,
      level: json['Level'] as num?,
      seasonLevelUiDisplay: json['SeasonLevelUiDisplay'] as num?,
      inventoryId: json['InventoryId'],
      playerNumber: json['PlayerNumber'] as num?,
      teamIndex: json['TeamIndex'] as num?,
      isPartyLeader: json['IsPartyLeader'] as bool?,
      isReplayOwner: json['IsReplayOwner'] as bool?,
      isGameSessionOwner: json['IsGameSessionOwner'],
      hasFinishedLoading: json['HasFinishedLoading'] as bool?,
      hasStartedPlaying: json['HasStartedPlaying'] as bool?,
      hasThankedBusDriver: json['HasThankedBusDriver'] as bool?,
      isUsingStreamerMode: json['IsUsingStreamerMode'] as bool?,
      isUsingAnonymousMode: json['IsUsingAnonymousMode'] as bool?,
      disconnected: json['Disconnected'],
      rebootCounter: json['RebootCounter'] as num?,
      placement: json['Placement'] as num?,
      kills: json['Kills'] as num?,
      teamKills: json['TeamKills'] as num?,
      deathCause: json['DeathCause'] as num?,
      deathCircumstance: json['DeathCircumstance'],
      deathTags: (json['DeathTags'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      deathLocation: json['DeathLocation'] == null
          ? null
          : DeathLocation.fromJson(
              json['DeathLocation'] as Map<String, dynamic>),
      deathTime: json['DeathTime'] as num?,
      deathTimeDouble: json['DeathTimeDouble'] as num?,
      cosmetics: json['Cosmetics'] == null
          ? null
          : Cosmetics.fromJson(json['Cosmetics'] as Map<String, dynamic>),
      currentWeapon: json['CurrentWeapon'] as num?,
      locations: json['Locations'] as List<dynamic>?,
    );

Map<String, dynamic> _$$PlayerDataImplToJson(_$PlayerDataImpl instance) =>
    <String, dynamic>{
      'Id': instance.id,
      'PlayerId': instance.playerId,
      'EpicId': instance.epicId,
      'PlatformUniqueNetId': instance.platformUniqueNetId,
      'BotId': instance.botId,
      'IsBot': instance.isBot,
      'PlayerName': instance.playerName,
      'PlayerNameCustomOverride': instance.playerNameCustomOverride,
      'StreamerModeName': instance.streamerModeName,
      'Platform': instance.platform,
      'Level': instance.level,
      'SeasonLevelUiDisplay': instance.seasonLevelUiDisplay,
      'InventoryId': instance.inventoryId,
      'PlayerNumber': instance.playerNumber,
      'TeamIndex': instance.teamIndex,
      'IsPartyLeader': instance.isPartyLeader,
      'IsReplayOwner': instance.isReplayOwner,
      'IsGameSessionOwner': instance.isGameSessionOwner,
      'HasFinishedLoading': instance.hasFinishedLoading,
      'HasStartedPlaying': instance.hasStartedPlaying,
      'HasThankedBusDriver': instance.hasThankedBusDriver,
      'IsUsingStreamerMode': instance.isUsingStreamerMode,
      'IsUsingAnonymousMode': instance.isUsingAnonymousMode,
      'Disconnected': instance.disconnected,
      'RebootCounter': instance.rebootCounter,
      'Placement': instance.placement,
      'Kills': instance.kills,
      'TeamKills': instance.teamKills,
      'DeathCause': instance.deathCause,
      'DeathCircumstance': instance.deathCircumstance,
      'DeathTags': instance.deathTags,
      'DeathLocation': instance.deathLocation,
      'DeathTime': instance.deathTime,
      'DeathTimeDouble': instance.deathTimeDouble,
      'Cosmetics': instance.cosmetics,
      'CurrentWeapon': instance.currentWeapon,
      'Locations': instance.locations,
    };

_$CosmeticsImpl _$$CosmeticsImplFromJson(Map<String, dynamic> json) =>
    _$CosmeticsImpl(
      characterGender: json['CharacterGender'] as num?,
      characterBodyType: json['CharacterBodyType'] as num?,
      parts: json['Parts'] as String?,
      variantRequiredCharacterParts: json['VariantRequiredCharacterParts'],
      heroType: json['HeroType'] as String?,
      bannerIconId: json['BannerIconId'] as String?,
      bannerColorId: json['BannerColorId'] as String?,
      itemWraps: (json['ItemWraps'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      skyDiveContrail: json['SkyDiveContrail'] as String?,
      glider: json['Glider'] as String?,
      pickaxe: json['Pickaxe'] as String?,
      isDefaultCharacter: json['IsDefaultCharacter'],
      character: json['Character'] as String?,
      backpack: json['Backpack'],
      loadingScreen: json['LoadingScreen'],
      dances:
          (json['Dances'] as List<dynamic>?)?.map((e) => e as String?).toList(),
      musicPack: json['MusicPack'],
      petSkin: json['PetSkin'],
    );

Map<String, dynamic> _$$CosmeticsImplToJson(_$CosmeticsImpl instance) =>
    <String, dynamic>{
      'CharacterGender': instance.characterGender,
      'CharacterBodyType': instance.characterBodyType,
      'Parts': instance.parts,
      'VariantRequiredCharacterParts': instance.variantRequiredCharacterParts,
      'HeroType': instance.heroType,
      'BannerIconId': instance.bannerIconId,
      'BannerColorId': instance.bannerColorId,
      'ItemWraps': instance.itemWraps,
      'SkyDiveContrail': instance.skyDiveContrail,
      'Glider': instance.glider,
      'Pickaxe': instance.pickaxe,
      'IsDefaultCharacter': instance.isDefaultCharacter,
      'Character': instance.character,
      'Backpack': instance.backpack,
      'LoadingScreen': instance.loadingScreen,
      'Dances': instance.dances,
      'MusicPack': instance.musicPack,
      'PetSkin': instance.petSkin,
    };

_$DeathLocationImpl _$$DeathLocationImplFromJson(Map<String, dynamic> json) =>
    _$DeathLocationImpl(
      x: json['X'] as num?,
      y: json['Y'] as num?,
      z: json['Z'] as num?,
      scaleFactor: json['ScaleFactor'] as num?,
      bits: json['Bits'] as num?,
    );

Map<String, dynamic> _$$DeathLocationImplToJson(_$DeathLocationImpl instance) =>
    <String, dynamic>{
      'X': instance.x,
      'Y': instance.y,
      'Z': instance.z,
      'ScaleFactor': instance.scaleFactor,
      'Bits': instance.bits,
    };
