import 'result_dto.dart';

class PeopleDTO {
  PeopleDTO({
    required this.count,
    required this.next,
    required this.previous,
    required this.results,
  });

  factory PeopleDTO.fromJson(Map<String, dynamic> json) {
    var results = <ResultDTO>[];

    if (json['results'] != null) {
      json['results'].forEach((json) {
        var result = ResultDTO.fromJson(json);
        results.add(result);
      });
    }

    return PeopleDTO(
      count: json['count'],
      next: json['next'],
      previous: json['previous'],
      results: results,
    );
  }

  final int? count;
  final String? next;
  final String? previous;
  final List<ResultDTO> results;
}
