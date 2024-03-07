// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kill_feed_entry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

KillFeedEntry _$KillFeedEntryFromJson(Map<String, dynamic> json) {
  return _KillFeedEntry.fromJson(json);
}

/// @nodoc
mixin _$KillFeedEntry {
  num? get playerId => throw _privateConstructorUsedError;
  String? get playerName => throw _privateConstructorUsedError;
  bool? get playerIsBot => throw _privateConstructorUsedError;
  num? get finisherOrDowner => throw _privateConstructorUsedError;
  String? get finisherOrDownerName => throw _privateConstructorUsedError;
  bool? get finisherOrDownerIsBot => throw _privateConstructorUsedError;
  num? get replicatedWorldTimeSeconds => throw _privateConstructorUsedError;
  num? get replicatedWorldTimeSecondsDouble =>
      throw _privateConstructorUsedError;
  num? get distance => throw _privateConstructorUsedError;
  num? get deathCause => throw _privateConstructorUsedError;
  DeathLocation? get deathLocation => throw _privateConstructorUsedError;
  dynamic get deathCircumstance => throw _privateConstructorUsedError;
  List<String?>? get deathTags => throw _privateConstructorUsedError;
  bool? get isDowned => throw _privateConstructorUsedError;
  bool? get isRevived => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KillFeedEntryCopyWith<KillFeedEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KillFeedEntryCopyWith<$Res> {
  factory $KillFeedEntryCopyWith(
          KillFeedEntry value, $Res Function(KillFeedEntry) then) =
      _$KillFeedEntryCopyWithImpl<$Res, KillFeedEntry>;
  @useResult
  $Res call(
      {num? playerId,
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
      bool? isRevived});

  $DeathLocationCopyWith<$Res>? get deathLocation;
}

/// @nodoc
class _$KillFeedEntryCopyWithImpl<$Res, $Val extends KillFeedEntry>
    implements $KillFeedEntryCopyWith<$Res> {
  _$KillFeedEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playerId = freezed,
    Object? playerName = freezed,
    Object? playerIsBot = freezed,
    Object? finisherOrDowner = freezed,
    Object? finisherOrDownerName = freezed,
    Object? finisherOrDownerIsBot = freezed,
    Object? replicatedWorldTimeSeconds = freezed,
    Object? replicatedWorldTimeSecondsDouble = freezed,
    Object? distance = freezed,
    Object? deathCause = freezed,
    Object? deathLocation = freezed,
    Object? deathCircumstance = freezed,
    Object? deathTags = freezed,
    Object? isDowned = freezed,
    Object? isRevived = freezed,
  }) {
    return _then(_value.copyWith(
      playerId: freezed == playerId
          ? _value.playerId
          : playerId // ignore: cast_nullable_to_non_nullable
              as num?,
      playerName: freezed == playerName
          ? _value.playerName
          : playerName // ignore: cast_nullable_to_non_nullable
              as String?,
      playerIsBot: freezed == playerIsBot
          ? _value.playerIsBot
          : playerIsBot // ignore: cast_nullable_to_non_nullable
              as bool?,
      finisherOrDowner: freezed == finisherOrDowner
          ? _value.finisherOrDowner
          : finisherOrDowner // ignore: cast_nullable_to_non_nullable
              as num?,
      finisherOrDownerName: freezed == finisherOrDownerName
          ? _value.finisherOrDownerName
          : finisherOrDownerName // ignore: cast_nullable_to_non_nullable
              as String?,
      finisherOrDownerIsBot: freezed == finisherOrDownerIsBot
          ? _value.finisherOrDownerIsBot
          : finisherOrDownerIsBot // ignore: cast_nullable_to_non_nullable
              as bool?,
      replicatedWorldTimeSeconds: freezed == replicatedWorldTimeSeconds
          ? _value.replicatedWorldTimeSeconds
          : replicatedWorldTimeSeconds // ignore: cast_nullable_to_non_nullable
              as num?,
      replicatedWorldTimeSecondsDouble: freezed ==
              replicatedWorldTimeSecondsDouble
          ? _value.replicatedWorldTimeSecondsDouble
          : replicatedWorldTimeSecondsDouble // ignore: cast_nullable_to_non_nullable
              as num?,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as num?,
      deathCause: freezed == deathCause
          ? _value.deathCause
          : deathCause // ignore: cast_nullable_to_non_nullable
              as num?,
      deathLocation: freezed == deathLocation
          ? _value.deathLocation
          : deathLocation // ignore: cast_nullable_to_non_nullable
              as DeathLocation?,
      deathCircumstance: freezed == deathCircumstance
          ? _value.deathCircumstance
          : deathCircumstance // ignore: cast_nullable_to_non_nullable
              as dynamic,
      deathTags: freezed == deathTags
          ? _value.deathTags
          : deathTags // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      isDowned: freezed == isDowned
          ? _value.isDowned
          : isDowned // ignore: cast_nullable_to_non_nullable
              as bool?,
      isRevived: freezed == isRevived
          ? _value.isRevived
          : isRevived // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DeathLocationCopyWith<$Res>? get deathLocation {
    if (_value.deathLocation == null) {
      return null;
    }

    return $DeathLocationCopyWith<$Res>(_value.deathLocation!, (value) {
      return _then(_value.copyWith(deathLocation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$KillFeedEntryImplCopyWith<$Res>
    implements $KillFeedEntryCopyWith<$Res> {
  factory _$$KillFeedEntryImplCopyWith(
          _$KillFeedEntryImpl value, $Res Function(_$KillFeedEntryImpl) then) =
      __$$KillFeedEntryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {num? playerId,
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
      bool? isRevived});

  @override
  $DeathLocationCopyWith<$Res>? get deathLocation;
}

/// @nodoc
class __$$KillFeedEntryImplCopyWithImpl<$Res>
    extends _$KillFeedEntryCopyWithImpl<$Res, _$KillFeedEntryImpl>
    implements _$$KillFeedEntryImplCopyWith<$Res> {
  __$$KillFeedEntryImplCopyWithImpl(
      _$KillFeedEntryImpl _value, $Res Function(_$KillFeedEntryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playerId = freezed,
    Object? playerName = freezed,
    Object? playerIsBot = freezed,
    Object? finisherOrDowner = freezed,
    Object? finisherOrDownerName = freezed,
    Object? finisherOrDownerIsBot = freezed,
    Object? replicatedWorldTimeSeconds = freezed,
    Object? replicatedWorldTimeSecondsDouble = freezed,
    Object? distance = freezed,
    Object? deathCause = freezed,
    Object? deathLocation = freezed,
    Object? deathCircumstance = freezed,
    Object? deathTags = freezed,
    Object? isDowned = freezed,
    Object? isRevived = freezed,
  }) {
    return _then(_$KillFeedEntryImpl(
      playerId: freezed == playerId
          ? _value.playerId
          : playerId // ignore: cast_nullable_to_non_nullable
              as num?,
      playerName: freezed == playerName
          ? _value.playerName
          : playerName // ignore: cast_nullable_to_non_nullable
              as String?,
      playerIsBot: freezed == playerIsBot
          ? _value.playerIsBot
          : playerIsBot // ignore: cast_nullable_to_non_nullable
              as bool?,
      finisherOrDowner: freezed == finisherOrDowner
          ? _value.finisherOrDowner
          : finisherOrDowner // ignore: cast_nullable_to_non_nullable
              as num?,
      finisherOrDownerName: freezed == finisherOrDownerName
          ? _value.finisherOrDownerName
          : finisherOrDownerName // ignore: cast_nullable_to_non_nullable
              as String?,
      finisherOrDownerIsBot: freezed == finisherOrDownerIsBot
          ? _value.finisherOrDownerIsBot
          : finisherOrDownerIsBot // ignore: cast_nullable_to_non_nullable
              as bool?,
      replicatedWorldTimeSeconds: freezed == replicatedWorldTimeSeconds
          ? _value.replicatedWorldTimeSeconds
          : replicatedWorldTimeSeconds // ignore: cast_nullable_to_non_nullable
              as num?,
      replicatedWorldTimeSecondsDouble: freezed ==
              replicatedWorldTimeSecondsDouble
          ? _value.replicatedWorldTimeSecondsDouble
          : replicatedWorldTimeSecondsDouble // ignore: cast_nullable_to_non_nullable
              as num?,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as num?,
      deathCause: freezed == deathCause
          ? _value.deathCause
          : deathCause // ignore: cast_nullable_to_non_nullable
              as num?,
      deathLocation: freezed == deathLocation
          ? _value.deathLocation
          : deathLocation // ignore: cast_nullable_to_non_nullable
              as DeathLocation?,
      deathCircumstance: freezed == deathCircumstance
          ? _value.deathCircumstance
          : deathCircumstance // ignore: cast_nullable_to_non_nullable
              as dynamic,
      deathTags: freezed == deathTags
          ? _value._deathTags
          : deathTags // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      isDowned: freezed == isDowned
          ? _value.isDowned
          : isDowned // ignore: cast_nullable_to_non_nullable
              as bool?,
      isRevived: freezed == isRevived
          ? _value.isRevived
          : isRevived // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$KillFeedEntryImpl implements _KillFeedEntry {
  const _$KillFeedEntryImpl(
      {this.playerId,
      this.playerName,
      this.playerIsBot,
      this.finisherOrDowner,
      this.finisherOrDownerName,
      this.finisherOrDownerIsBot,
      this.replicatedWorldTimeSeconds,
      this.replicatedWorldTimeSecondsDouble,
      this.distance,
      this.deathCause,
      this.deathLocation,
      this.deathCircumstance,
      final List<String?>? deathTags,
      this.isDowned,
      this.isRevived})
      : _deathTags = deathTags;

  factory _$KillFeedEntryImpl.fromJson(Map<String, dynamic> json) =>
      _$$KillFeedEntryImplFromJson(json);

  @override
  final num? playerId;
  @override
  final String? playerName;
  @override
  final bool? playerIsBot;
  @override
  final num? finisherOrDowner;
  @override
  final String? finisherOrDownerName;
  @override
  final bool? finisherOrDownerIsBot;
  @override
  final num? replicatedWorldTimeSeconds;
  @override
  final num? replicatedWorldTimeSecondsDouble;
  @override
  final num? distance;
  @override
  final num? deathCause;
  @override
  final DeathLocation? deathLocation;
  @override
  final dynamic deathCircumstance;
  final List<String?>? _deathTags;
  @override
  List<String?>? get deathTags {
    final value = _deathTags;
    if (value == null) return null;
    if (_deathTags is EqualUnmodifiableListView) return _deathTags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool? isDowned;
  @override
  final bool? isRevived;

  @override
  String toString() {
    return 'KillFeedEntry(playerId: $playerId, playerName: $playerName, playerIsBot: $playerIsBot, finisherOrDowner: $finisherOrDowner, finisherOrDownerName: $finisherOrDownerName, finisherOrDownerIsBot: $finisherOrDownerIsBot, replicatedWorldTimeSeconds: $replicatedWorldTimeSeconds, replicatedWorldTimeSecondsDouble: $replicatedWorldTimeSecondsDouble, distance: $distance, deathCause: $deathCause, deathLocation: $deathLocation, deathCircumstance: $deathCircumstance, deathTags: $deathTags, isDowned: $isDowned, isRevived: $isRevived)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KillFeedEntryImpl &&
            (identical(other.playerId, playerId) ||
                other.playerId == playerId) &&
            (identical(other.playerName, playerName) ||
                other.playerName == playerName) &&
            (identical(other.playerIsBot, playerIsBot) ||
                other.playerIsBot == playerIsBot) &&
            (identical(other.finisherOrDowner, finisherOrDowner) ||
                other.finisherOrDowner == finisherOrDowner) &&
            (identical(other.finisherOrDownerName, finisherOrDownerName) ||
                other.finisherOrDownerName == finisherOrDownerName) &&
            (identical(other.finisherOrDownerIsBot, finisherOrDownerIsBot) ||
                other.finisherOrDownerIsBot == finisherOrDownerIsBot) &&
            (identical(other.replicatedWorldTimeSeconds,
                    replicatedWorldTimeSeconds) ||
                other.replicatedWorldTimeSeconds ==
                    replicatedWorldTimeSeconds) &&
            (identical(other.replicatedWorldTimeSecondsDouble,
                    replicatedWorldTimeSecondsDouble) ||
                other.replicatedWorldTimeSecondsDouble ==
                    replicatedWorldTimeSecondsDouble) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.deathCause, deathCause) ||
                other.deathCause == deathCause) &&
            (identical(other.deathLocation, deathLocation) ||
                other.deathLocation == deathLocation) &&
            const DeepCollectionEquality()
                .equals(other.deathCircumstance, deathCircumstance) &&
            const DeepCollectionEquality()
                .equals(other._deathTags, _deathTags) &&
            (identical(other.isDowned, isDowned) ||
                other.isDowned == isDowned) &&
            (identical(other.isRevived, isRevived) ||
                other.isRevived == isRevived));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      playerId,
      playerName,
      playerIsBot,
      finisherOrDowner,
      finisherOrDownerName,
      finisherOrDownerIsBot,
      replicatedWorldTimeSeconds,
      replicatedWorldTimeSecondsDouble,
      distance,
      deathCause,
      deathLocation,
      const DeepCollectionEquality().hash(deathCircumstance),
      const DeepCollectionEquality().hash(_deathTags),
      isDowned,
      isRevived);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$KillFeedEntryImplCopyWith<_$KillFeedEntryImpl> get copyWith =>
      __$$KillFeedEntryImplCopyWithImpl<_$KillFeedEntryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KillFeedEntryImplToJson(
      this,
    );
  }
}

abstract class _KillFeedEntry implements KillFeedEntry {
  const factory _KillFeedEntry(
      {final num? playerId,
      final String? playerName,
      final bool? playerIsBot,
      final num? finisherOrDowner,
      final String? finisherOrDownerName,
      final bool? finisherOrDownerIsBot,
      final num? replicatedWorldTimeSeconds,
      final num? replicatedWorldTimeSecondsDouble,
      final num? distance,
      final num? deathCause,
      final DeathLocation? deathLocation,
      final dynamic deathCircumstance,
      final List<String?>? deathTags,
      final bool? isDowned,
      final bool? isRevived}) = _$KillFeedEntryImpl;

  factory _KillFeedEntry.fromJson(Map<String, dynamic> json) =
      _$KillFeedEntryImpl.fromJson;

  @override
  num? get playerId;
  @override
  String? get playerName;
  @override
  bool? get playerIsBot;
  @override
  num? get finisherOrDowner;
  @override
  String? get finisherOrDownerName;
  @override
  bool? get finisherOrDownerIsBot;
  @override
  num? get replicatedWorldTimeSeconds;
  @override
  num? get replicatedWorldTimeSecondsDouble;
  @override
  num? get distance;
  @override
  num? get deathCause;
  @override
  DeathLocation? get deathLocation;
  @override
  dynamic get deathCircumstance;
  @override
  List<String?>? get deathTags;
  @override
  bool? get isDowned;
  @override
  bool? get isRevived;
  @override
  @JsonKey(ignore: true)
  _$$KillFeedEntryImplCopyWith<_$KillFeedEntryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
