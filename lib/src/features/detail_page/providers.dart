import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/datasources/i_planets_data_source.dart';
import '../../data/datasources/planets_data_source.dart';
import '../../data/repositories/planets_repository.dart';
part 'providers.g.dart';

@riverpod
IPlanetsDataSource planetsDataSource(
  PlanetsDataSourceRef ref,
) {
  return PlanetsDataSource();
}

@riverpod
PlanetsRepository planetsRepository(PlanetsRepositoryRef ref) {
  final dataSource = ref.watch(planetsDataSourceProvider);

  return PlanetsRepository(
    planetsDataSource: dataSource,
  );
}
