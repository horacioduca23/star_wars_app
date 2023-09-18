import '../dtos/planet_dto.dart';

abstract class IPlanetsDataSource {
  Future<PlanetDTO?> fetchPlanets(int index);
}
