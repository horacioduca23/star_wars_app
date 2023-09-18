// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'planets_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$planetsControllerHash() => r'8b86f7595137e73d288822ad8415662dfeb67b73';

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

abstract class _$PlanetsController
    extends BuildlessAutoDisposeAsyncNotifier<Planet?> {
  late final int index;

  Future<Planet?> build(
    int index,
  );
}

/// See also [PlanetsController].
@ProviderFor(PlanetsController)
const planetsControllerProvider = PlanetsControllerFamily();

/// See also [PlanetsController].
class PlanetsControllerFamily extends Family<AsyncValue<Planet?>> {
  /// See also [PlanetsController].
  const PlanetsControllerFamily();

  /// See also [PlanetsController].
  PlanetsControllerProvider call(
    int index,
  ) {
    return PlanetsControllerProvider(
      index,
    );
  }

  @override
  PlanetsControllerProvider getProviderOverride(
    covariant PlanetsControllerProvider provider,
  ) {
    return call(
      provider.index,
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
  String? get name => r'planetsControllerProvider';
}

/// See also [PlanetsController].
class PlanetsControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<PlanetsController, Planet?> {
  /// See also [PlanetsController].
  PlanetsControllerProvider(
    int index,
  ) : this._internal(
          () => PlanetsController()..index = index,
          from: planetsControllerProvider,
          name: r'planetsControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$planetsControllerHash,
          dependencies: PlanetsControllerFamily._dependencies,
          allTransitiveDependencies:
              PlanetsControllerFamily._allTransitiveDependencies,
          index: index,
        );

  PlanetsControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.index,
  }) : super.internal();

  final int index;

  @override
  Future<Planet?> runNotifierBuild(
    covariant PlanetsController notifier,
  ) {
    return notifier.build(
      index,
    );
  }

  @override
  Override overrideWith(PlanetsController Function() create) {
    return ProviderOverride(
      origin: this,
      override: PlanetsControllerProvider._internal(
        () => create()..index = index,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        index: index,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<PlanetsController, Planet?>
      createElement() {
    return _PlanetsControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PlanetsControllerProvider && other.index == index;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, index.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin PlanetsControllerRef on AutoDisposeAsyncNotifierProviderRef<Planet?> {
  /// The parameter `index` of this provider.
  int get index;
}

class _PlanetsControllerProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<PlanetsController, Planet?>
    with PlanetsControllerRef {
  _PlanetsControllerProviderElement(super.provider);

  @override
  int get index => (origin as PlanetsControllerProvider).index;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
