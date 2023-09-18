class ResultDTO {
  ResultDTO({
    required this.name,
    required this.height,
    required this.mass,
    required this.hairColor,
    required this.skinColor,
    required this.eyeColor,
    required this.birthYear,
    required this.gender,
    required this.homeworld,
    required this.films,
    required this.species,
    required this.vehicles,
    required this.starships,
    required this.created,
    required this.edited,
    required this.url,
  });

  factory ResultDTO.fromJson(Map<String, dynamic> json) {
    var results = <ResultDTO>[];

    if (json['results'] != null) {
      json['results'].forEach((json) {
        var result = ResultDTO.fromJson(json);
        results.add(result);
      });
    }

    return ResultDTO(
      name: json['name'],
      height: json['height'],
      mass: json['mass'],
      hairColor: json['hair_color'],
      skinColor: json['skin_color'],
      eyeColor: json['eye_color'],
      birthYear: json['birth_year'],
      gender: json['gender'],
      homeworld: json['homeworld'],
      films: json['films'].cast<String>(),
      species: json['species'].cast<String>(),
      vehicles: json['vehicles'].cast<String>(),
      starships: json['starships'].cast<String>(),
      created: json['created'],
      edited: json['edited'],
      url: json['url'],
    );
  }

  final String name;
  final String height;
  final String mass;
  final String hairColor;
  final String skinColor;
  final String eyeColor;
  final String birthYear;
  final String gender;
  final String homeworld;
  final List<String> films;
  final List<String> species;
  final List<String> vehicles;
  final List<String> starships;
  final String created;
  final String edited;
  final String url;
}
