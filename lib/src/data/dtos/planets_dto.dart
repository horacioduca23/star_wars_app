// import 'planet_dto.dart';

// class PlanetsDTO {
//   PlanetsDTO({
//     required this.count,
//     required this.next,
//     required this.previous,
//     required this.results,
//   });

//   factory PlanetsDTO.fromJson(Map<String, dynamic> json) {
//     var results = <PlanetDTO>[];

//     if (json['results'] != null) {
//       json['results'].forEach((json) {
//         var result = PlanetDTO.fromJson(json);
//         results.add(result);
//       });
//     }

//     return PlanetsDTO(
//       count: json['count'],
//       next: json['next'],
//       previous: json['previous'],
//       results: results,
//     );
//   }

//   final int? count;
//   final String? next;
//   final String? previous;
//   final List<PlanetDTO> results;
// }
