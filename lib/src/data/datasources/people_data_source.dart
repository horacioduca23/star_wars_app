import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' show Client;

import 'i_people_data_source.dart';
import '../../constants/strings.dart';
import '../dtos/people_dto.dart';

class PeopleDataSource implements IPeopleDataSource {
  Client client = Client();

  /// This method returns the ID value from current character
  /// obtained from the API URL path.
  ///
  /// For example: in https://swapi.dev/api/people/1/ case
  /// It will return "1".
  int? _getIdValue(String url) {
    int? id;
    List<String> urlParts = url.split("/");
    if (urlParts.length >= 2) {
      String idValue = urlParts[urlParts.length - 2];
      id = int.parse(idValue);
    } else {
      throw Exception(Strings.errorParsingIdValue);
    }
    return id;
  }

  @override
  Future<PeopleDTO?> fetchPeople(int currentPage) async {
    PeopleDTO? people;

    final response = await client.get(
      Uri.parse(
        '${Strings.peoplePath}?page=$currentPage',
      ),
    );

    if (response.statusCode == 200) {
      people = PeopleDTO.fromJson(
        json.decode(response.body),
      );
    } else {
      throw Exception(
        Strings.errorFetchingData,
      );
    }

    return people;
  }

  @override
  Future<bool> postReport(
    String characterName,
    String url,
  ) async {
    var result = false;

    int? id = _getIdValue(url);

    final response = await client.post(
      Uri.parse(
        Strings.reportPath,
      ),
      body: jsonEncode(
        <String, dynamic>{
          'userId': id,
          'dateTime': DateTime.now().toString(),
          'character_name': characterName,
        },
      ),
    );

    if (response.statusCode >= 201 && response.statusCode < 400) {
      result = true;
    } else {
      result = false;
      throw Exception(
        Strings.errorFetchingData,
      );
    }
    return result;
  }
}
