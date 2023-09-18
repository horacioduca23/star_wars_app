import '../dtos/mappers/planet_mapper.dart';
import '../datasources/i_planets_data_source.dart';
import '../domain/planet.dart';

class PlanetsRepository {
  PlanetsRepository({
    required IPlanetsDataSource planetsDataSource,
  }) : _planetsDataSource = planetsDataSource;

  final IPlanetsDataSource _planetsDataSource;

  Future<Planet?> fetchPlanets(int index) async {
    Planet? planet;
    final planetDTO = await _planetsDataSource.fetchPlanets(index);

    if (planetDTO != null) {
      planet = planetDTO.toModel();
    }

    return planet;
  }
}
