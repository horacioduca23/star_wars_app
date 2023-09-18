import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../providers.dart';
import '../../../../data/domain/planet.dart';
part 'planets_controller.g.dart';

@riverpod
class PlanetsController extends _$PlanetsController {
  @override
  Future<Planet?> build(int index) async {
    final data = await fetchPlanets(index);

    return data;
  }

  Future<Planet?> fetchPlanets(int index) async {
    Planet? planet;

    try {
      final planetsRepository = ref.read(planetsRepositoryProvider);

      final result = await AsyncValue.guard(
        () => planetsRepository.fetchPlanets(index),
      );
      result.whenData(
        (value) => planet = value,
      );
    } on Exception catch (ex, stack) {
      state = AsyncValue.error(ex, stack);
    }

    return planet;
  }
}
