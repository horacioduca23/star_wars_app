import 'dart:convert';
import 'package:http/http.dart' show Client;

import '../dtos/planet_dto.dart';
import 'i_planets_data_source.dart';
import '../../constants/strings.dart';

class PlanetsDataSource implements IPlanetsDataSource {
  @override
  Future<PlanetDTO?> fetchPlanets(int index) async {
    Client client = Client();
    PlanetDTO? planets;

    final response = await client.get(
      Uri.parse(
        '${Strings.planetsPath}$index',
      ),
    );

    if (response.statusCode == 200) {
      planets = PlanetDTO.fromJson(
        json.decode(response.body),
      );
    } else {
      throw Exception(
        Strings.errorFetchingData,
      );
    }

    return planets;
  }
}
