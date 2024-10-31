import 'dart:convert';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:mockito/annotations.dart';
import 'package:mobile/service/pokemon_team_service.dart';


@GenerateMocks([http.Client])
void main() {
  group('PokemonTeamService', () {
   test('deve retornar um PokemonTeamModel quando a resposta é 200', () async {
      final client = MockClient((request) async {
        final teamJson = {
          'id': '1',
          'user_id': '1',
          'team_name': 'Ninja',
          'pokemon': [
            {
                "move1": "Bitter Blade",
                "move2": "Shadow Sneak",
                "move3": "Close Combat",
                "move4": "Swords Dance",
                "name": "Ceruledge",
                "lvl": 50,
                "nature": "Adamant",
                "ability": "Flash Fire",
                "hp": 75,
                "atk": 125,
                "def": 80,
                "spa": 60,
                "spd": 100,
                "spe": 85,
                "image": "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/937.png"
            }
          ]
        };
        
        return http.Response(jsonEncode(teamJson), 200);
      });

      final service = PokemonTeamService(client: client);

      final result = await service.getTeamById(1);

      expect(result.id, 1);
      expect(result.user_id, 1);
      expect(result.team_name, 'Ninja');
      expect(result.pokemon[0].name, 'Ceruledge');
    });
    
  });
}
