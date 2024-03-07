// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'replay_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReplaySummary _$ReplaySummaryFromJson(Map<String, dynamic> json) {
  return _ReplaySummary.fromJson(json);
}

/// @nodoc
mixin _$ReplaySummary {
  List<PlayerData>? get playerData => throw _privateConstructorUsedError;
  GameData? get gameData => throw _privateConstructorUsedError;
  List<KillFeedEntry> get killFeed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReplaySummaryCopyWith<ReplaySummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReplaySummaryCopyWith<$Res> {
  factory $ReplaySummaryCopyWith(
          ReplaySummary value, $Res Function(ReplaySummary) then) =
      _$ReplaySummaryCopyWithImpl<$Res, ReplaySummary>;
  @useResult
  $Res call(
      {List<PlayerData>? playerData,
      GameData? gameData,
      List<KillFeedEntry> killFeed});

  $GameDataCopyWith<$Res>? get gameData;
}

/// @nodoc
class _$ReplaySummaryCopyWithImpl<$Res, $Val extends ReplaySummary>
    implements $ReplaySummaryCopyWith<$Res> {
  _$ReplaySummaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playerData = freezed,
    Object? gameData = freezed,
    Object? killFeed = null,
  }) {
    return _then(_value.copyWith(
      playerData: freezed == playerData
          ? _value.playerData
          : playerData // ignore: cast_nullable_to_non_nullable
              as List<PlayerData>?,
      gameData: freezed == gameData
          ? _value.gameData
          : gameData // ignore: cast_nullable_to_non_nullable
              as GameData?,
      killFeed: null == killFeed
          ? _value.killFeed
          : killFeed // ignore: cast_nullable_to_non_nullable
              as List<KillFeedEntry>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GameDataCopyWith<$Res>? get gameData {
    if (_value.gameData == null) {
      return null;
    }

    return $GameDataCopyWith<$Res>(_value.gameData!, (value) {
      return _then(_value.copyWith(gameData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReplaySummaryImplCopyWith<$Res>
    implements $ReplaySummaryCopyWith<$Res> {
  factory _$$ReplaySummaryImplCopyWith(
          _$ReplaySummaryImpl value, $Res Function(_$ReplaySummaryImpl) then) =
      __$$ReplaySummaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<PlayerData>? playerData,
      GameData? gameData,
      List<KillFeedEntry> killFeed});

  @override
  $GameDataCopyWith<$Res>? get gameData;
}

/// @nodoc
class __$$ReplaySummaryImplCopyWithImpl<$Res>
    extends _$ReplaySummaryCopyWithImpl<$Res, _$ReplaySummaryImpl>
    implements _$$ReplaySummaryImplCopyWith<$Res> {
  __$$ReplaySummaryImplCopyWithImpl(
      _$ReplaySummaryImpl _value, $Res Function(_$ReplaySummaryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playerData = freezed,
    Object? gameData = freezed,
    Object? killFeed = null,
  }) {
    return _then(_$ReplaySummaryImpl(
      playerData: freezed == playerData
          ? _value._playerData
          : playerData // ignore: cast_nullable_to_non_nullable
              as List<PlayerData>?,
      gameData: freezed == gameData
          ? _value.gameData
          : gameData // ignore: cast_nullable_to_non_nullable
              as GameData?,
      killFeed: null == killFeed
          ? _value._killFeed
          : killFeed // ignore: cast_nullable_to_non_nullable
              as List<KillFeedEntry>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReplaySummaryImpl extends _ReplaySummary {
  const _$ReplaySummaryImpl(
      {final List<PlayerData>? playerData,
      this.gameData,
      final List<KillFeedEntry> killFeed = const <KillFeedEntry>[]})
      : _playerData = playerData,
        _killFeed = killFeed,
        super._();

  factory _$ReplaySummaryImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReplaySummaryImplFromJson(json);

  final List<PlayerData>? _playerData;
  @override
  List<PlayerData>? get playerData {
    final value = _playerData;
    if (value == null) return null;
    if (_playerData is EqualUnmodifiableListView) return _playerData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final GameData? gameData;
  final List<KillFeedEntry> _killFeed;
  @override
  @JsonKey()
  List<KillFeedEntry> get killFeed {
    if (_killFeed is EqualUnmodifiableListView) return _killFeed;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_killFeed);
  }

  @override
  String toString() {
    return 'ReplaySummary(playerData: $playerData, gameData: $gameData, killFeed: $killFeed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReplaySummaryImpl &&
            const DeepCollectionEquality()
                .equals(other._playerData, _playerData) &&
            (identical(other.gameData, gameData) ||
                other.gameData == gameData) &&
            const DeepCollectionEquality().equals(other._killFeed, _killFeed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_playerData),
      gameData,
      const DeepCollectionEquality().hash(_killFeed));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReplaySummaryImplCopyWith<_$ReplaySummaryImpl> get copyWith =>
      __$$ReplaySummaryImplCopyWithImpl<_$ReplaySummaryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReplaySummaryImplToJson(
      this,
    );
  }
}

abstract class _ReplaySummary extends ReplaySummary {
  const factory _ReplaySummary(
      {final List<PlayerData>? playerData,
      final GameData? gameData,
      final List<KillFeedEntry> killFeed}) = _$ReplaySummaryImpl;
  const _ReplaySummary._() : super._();

  factory _ReplaySummary.fromJson(Map<String, dynamic> json) =
      _$ReplaySummaryImpl.fromJson;

  @override
  List<PlayerData>? get playerData;
  @override
  GameData? get gameData;
  @override
  List<KillFeedEntry> get killFeed;
  @override
  @JsonKey(ignore: true)
  _$$ReplaySummaryImplCopyWith<_$ReplaySummaryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
