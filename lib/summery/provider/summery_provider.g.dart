// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'summery_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$summeryDataHash() => r'9641bc9469fe094353fc884225d733bfbb4429ae';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [summeryData].
@ProviderFor(summeryData)
const summeryDataProvider = SummeryDataFamily();

/// See also [summeryData].
class SummeryDataFamily extends Family<AsyncValue<ReplaySummary>> {
  /// See also [summeryData].
  const SummeryDataFamily();

  /// See also [summeryData].
  SummeryDataProvider call(
    String path,
  ) {
    return SummeryDataProvider(
      path,
    );
  }

  @override
  SummeryDataProvider getProviderOverride(
    covariant SummeryDataProvider provider,
  ) {
    return call(
      provider.path,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'summeryDataProvider';
}

/// See also [summeryData].
class SummeryDataProvider extends AutoDisposeFutureProvider<ReplaySummary> {
  /// See also [summeryData].
  SummeryDataProvider(
    String path,
  ) : this._internal(
          (ref) => summeryData(
            ref as SummeryDataRef,
            path,
          ),
          from: summeryDataProvider,
          name: r'summeryDataProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$summeryDataHash,
          dependencies: SummeryDataFamily._dependencies,
          allTransitiveDependencies:
              SummeryDataFamily._allTransitiveDependencies,
          path: path,
        );

  SummeryDataProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.path,
  }) : super.internal();

  final String path;

  @override
  Override overrideWith(
    FutureOr<ReplaySummary> Function(SummeryDataRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SummeryDataProvider._internal(
        (ref) => create(ref as SummeryDataRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        path: path,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<ReplaySummary> createElement() {
    return _SummeryDataProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SummeryDataProvider && other.path == path;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, path.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SummeryDataRef on AutoDisposeFutureProviderRef<ReplaySummary> {
  /// The parameter `path` of this provider.
  String get path;
}

class _SummeryDataProviderElement
    extends AutoDisposeFutureProviderElement<ReplaySummary>
    with SummeryDataRef {
  _SummeryDataProviderElement(super.provider);

  @override
  String get path => (origin as SummeryDataProvider).path;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
