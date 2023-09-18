class PlanetDTO {
  PlanetDTO({
    required this.name,
    required this.rotationPeriod,
    required this.orbitalPeriod,
    required this.diameter,
    required this.climate,
    required this.gravity,
    required this.terrain,
    required this.surfaceWater,
    required this.population,
    required this.residents,
    required this.films,
    required this.created,
    required this.edited,
    required this.url,
  });

  factory PlanetDTO.fromJson(Map<String, dynamic> json) {
    var results = <PlanetDTO>[];

    if (json['results'] != null) {
      json['results'].forEach((json) {
        var result = PlanetDTO.fromJson(json);
        results.add(result);
      });
    }

    return PlanetDTO(
      name: json['name'],
      rotationPeriod: json['rotation_period'],
      orbitalPeriod: json['orbital_period'],
      diameter: json['diameter'],
      climate: json['climate'],
      gravity: json['gravity'],
      terrain: json['terrain'],
      surfaceWater: json['surface_water'],
      population: json['population'],
      residents: json['residents'].cast<String>(),
      films: json['films'].cast<String>(),
      created: json['created'],
      edited: json['edited'],
      url: json['url'],
    );
  }

  final String name;
  final String rotationPeriod;
  final String orbitalPeriod;
  final String diameter;
  final String climate;
  final String gravity;
  final String terrain;
  final String surfaceWater;
  final String population;
  final List<String> residents;
  final List<String> films;
  final String created;
  final String edited;
  final String url;
}
