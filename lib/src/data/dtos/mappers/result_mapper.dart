import '../result_dto.dart';
import '../../domain/result.dart';

extension ResultMapper on ResultDTO {
  Result toModel() {
    var films = <String>[];
    var species = <String>[];
    var vehicles = <String>[];
    var starships = <String>[];

    return Result(
      name: name,
      height: height,
      mass: mass,
      hairColor: hairColor,
      skinColor: skinColor,
      eyeColor: eyeColor,
      birthYear: birthYear,
      gender: gender,
      homeworld: homeworld,
      films: films,
      species: species,
      vehicles: vehicles,
      starships: starships,
      created: created,
      edited: edited,
      url: url,
    );
  }
}
