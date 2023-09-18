class Planet {
  Planet({
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

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['rotation_period'] = rotationPeriod;
    data['orbital_period'] = orbitalPeriod;
    data['diameter'] = diameter;
    data['climate'] = climate;
    data['gravity'] = gravity;
    data['terrain'] = terrain;
    data['surface_water'] = surfaceWater;
    data['population'] = population;
    data['residents'] = residents;
    data['films'] = films;
    data['created'] = created;
    data['edited'] = edited;
    data['url'] = url;
    return data;
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
