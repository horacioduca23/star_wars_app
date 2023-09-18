// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$peopleDataSourceHash() => r'e39d845b2d325afca15f0472e304e03297aec135';

/// See also [peopleDataSource].
@ProviderFor(peopleDataSource)
final peopleDataSourceProvider =
    AutoDisposeProvider<IPeopleDataSource>.internal(
  peopleDataSource,
  name: r'peopleDataSourceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$peopleDataSourceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef PeopleDataSourceRef = AutoDisposeProviderRef<IPeopleDataSource>;
String _$peopleRepositoryHash() => r'a1341bb205cad71cb27a4383262ec643ffb4737e';

/// See also [peopleRepository].
@ProviderFor(peopleRepository)
final peopleRepositoryProvider = AutoDisposeProvider<PeopleRepository>.internal(
  peopleRepository,
  name: r'peopleRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$peopleRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef PeopleRepositoryRef = AutoDisposeProviderRef<PeopleRepository>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
