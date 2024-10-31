import 'package:mobile/model/pokemon_model.dart';

class PokemonTeamModel {
  final int id;
  final int user_id;
  final String team_name;
  List<PokemonModel> pokemon = [];

  PokemonTeamModel({
    required this.id,
    required this.user_id,
    required this.team_name,
  });

  // Método toJson para serializar o time em JSON, incluindo a lista de Pokémon
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'user_id': user_id,
      'team_name': team_name,
      'pokemon': pokemon.map((pok) => pok.toJson()).toList(),
    };
  }

  // Método fromJson para desserializar o time de JSON, incluindo a lista de Pokémon
  factory PokemonTeamModel.fromJson(Map<String, dynamic> json) {
    return PokemonTeamModel(
      id: int.parse(json['id']),
      user_id: int.parse(json['user_id']),
      team_name: json['team_name'],
    )..pokemon = (json['pokemon'] as List)
        .map((item) => PokemonModel.fromJson(item))
        .toList();
  }

  void adicionarPokemon(PokemonModel newPokemon) {
    if (pokemon.length >= 6) {
      throw Exception('Número de Pokémon excedido');
    }

    final existe = pokemon.any((pok) => pok.name.toLowerCase() == newPokemon.name.toLowerCase());

    if (!existe) {
      pokemon.add(newPokemon);
    } else {
      throw Exception('Este Pokémon já está no time.');
    }
  }

  void removerPokemon(String removePokemon) {
    int pkIndex = -1;

    for (int i = 0; i < pokemon.length; i++) {
      if (pokemon[i].name.toLowerCase() == removePokemon.toLowerCase()) {
        pkIndex = i;
        break;
      }
    }

    if (pkIndex != -1) {
      pokemon.removeAt(pkIndex);
    } else {
      throw Exception('$removePokemon não foi encontrado no time.');
    }
  }
}
