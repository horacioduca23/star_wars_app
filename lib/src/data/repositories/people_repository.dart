import '../datasources/i_people_data_source.dart';
import '../dtos/mappers/people_mapper.dart';
import '../domain/people.dart';

class PeopleRepository {
  PeopleRepository({
    required IPeopleDataSource peopleDataSource,
  }) : _peopleDataSource = peopleDataSource;

  final IPeopleDataSource _peopleDataSource;

  Future<People?> fetchPeople(int currentPage) async {
    People? people;
    final peopleDTO = await _peopleDataSource.fetchPeople(currentPage);

    if (peopleDTO != null) {
      people = peopleDTO.toModel();
    }

    return people;
  }

  Future<bool> postReport({
    required String characterName,
    required String url,
  }) async {
    final response = await _peopleDataSource.postReport(characterName, url);

    return response;
  }
}
