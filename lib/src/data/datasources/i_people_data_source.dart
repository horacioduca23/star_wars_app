import '../dtos/people_dto.dart';

abstract class IPeopleDataSource {
  Future<PeopleDTO?> fetchPeople(int currentPage);
  Future<bool> postReport(String characterName, String url);
}
