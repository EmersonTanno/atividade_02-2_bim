import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:mobile/model/pokemon_team_model.dart';

class PokemonTeamService {
  final http.Client client;

  PokemonTeamService({http.Client? client}) : client = client ?? http.Client();

  Future<PokemonTeamModel> getTeamById(int id) async {
    var response = await client.get(Uri.parse('http://localhost:3000/teams/$id'));

    if (response.statusCode == 200) {
      final teamJson = jsonDecode(response.body) as Map<String, dynamic>;
      return PokemonTeamModel.fromJson(teamJson);
    } else {
      throw Exception('Falha ao carregar o time');
    }
  }
}
