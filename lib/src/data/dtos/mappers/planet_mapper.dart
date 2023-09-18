import '../../domain/planet.dart';
import '../planet_dto.dart';

extension PlanetMapper on PlanetDTO {
  Planet toModel() {
    var residents = <String>[];
    var films = <String>[];

    return Planet(
      name: name,
      rotationPeriod: rotationPeriod,
      orbitalPeriod: orbitalPeriod,
      diameter: diameter,
      climate: climate,
      gravity: gravity,
      terrain: terrain,
      surfaceWater: surfaceWater,
      population: population,
      residents: residents,
      films: films,
      created: created,
      edited: edited,
      url: url,
    );
  }
}
