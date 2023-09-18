import 'result_mapper.dart';
import '../people_dto.dart';
import '../../domain/people.dart';
import '../../domain/result.dart';

extension PeopleMapper on PeopleDTO {
  People toModel() {
    var results = <Result>[];

    for (var resultDTO in this.results) {
      final result = resultDTO.toModel();
      results.add(result);
    }

    return People(
      count: count ?? 0,
      next: next ?? '',
      previous: previous ?? '',
      results: results,
    );
  }
}
