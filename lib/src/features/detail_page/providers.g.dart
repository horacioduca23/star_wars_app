// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$planetsDataSourceHash() => r'061ef0f9a47cea084113fd45858363ac1a076678';

/// See also [planetsDataSource].
@ProviderFor(planetsDataSource)
final planetsDataSourceProvider =
    AutoDisposeProvider<IPlanetsDataSource>.internal(
  planetsDataSource,
  name: r'planetsDataSourceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$planetsDataSourceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef PlanetsDataSourceRef = AutoDisposeProviderRef<IPlanetsDataSource>;
String _$planetsRepositoryHash() => r'201cbf684630f25ad4a8abd783522d2e60dcc346';

/// See also [planetsRepository].
@ProviderFor(planetsRepository)
final planetsRepositoryProvider =
    AutoDisposeProvider<PlanetsRepository>.internal(
  planetsRepository,
  name: r'planetsRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$planetsRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef PlanetsRepositoryRef = AutoDisposeProviderRef<PlanetsRepository>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
