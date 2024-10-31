import 'package:flutter_test/flutter_test.dart';
import 'package:mobile/model/pokemon_model.dart';
import 'package:mobile/model/pokemon_team_model.dart';

void main(){
  test('deve adicionar pokemon no time', (){
    PokemonModel greninja = PokemonModel(name: 'Greninja', lvl: 50, nature: 'Adamant', ability: 'Protean', hp: 70, atk: 70, def: 70, spa: 70, spd: 70, spe: 70, image: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/448.png", move1: "Close Combat", move2: "Close Combat", move3: "Close Combat", move4: "Close Combat");
    PokemonModel ceruledge = PokemonModel(name: 'Ceruledge', lvl: 50, nature: 'Adamant', ability: 'Protean', hp: 70, atk: 70, def: 70, spa: 70, spd: 70, spe: 70, image: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/448.png", move1: "Close Combat", move2: "Close Combat", move3: "Close Combat", move4: "Close Combat");
    PokemonModel armarouge = PokemonModel(name: 'Armarouge', lvl: 50, nature: 'Adamant', ability: 'Protean', hp: 70, atk: 70, def: 70, spa: 70, spd: 70, spe: 70, image: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/448.png", move1: "Close Combat", move2: "Close Combat", move3: "Close Combat", move4: "Close Combat");

    PokemonTeamModel team = PokemonTeamModel(id: 1, user_id: 1, team_name: 'Ninja');
    team.adicionarPokemon(greninja);
    team.adicionarPokemon(ceruledge);
    team.adicionarPokemon(armarouge);

    expect(team.pokemon.length, 3);
    expect(team.pokemon[0], greninja);
    expect(team.pokemon[1], ceruledge);
    expect(team.pokemon[2], armarouge);
  });

  test('deve remover pokemon do time', (){
    PokemonModel greninja = PokemonModel(name: 'Greninja', lvl: 50, nature: 'Adamant', ability: 'Protean', hp: 70, atk: 70, def: 70, spa: 70, spd: 70, spe: 70, image: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/448.png", move1: "Close Combat", move2: "Close Combat", move3: "Close Combat", move4: "Close Combat");
    PokemonModel ceruledge = PokemonModel(name: 'Ceruledge', lvl: 50, nature: 'Adamant', ability: 'Protean', hp: 70, atk: 70, def: 70, spa: 70, spd: 70, spe: 70, image: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/448.png", move1: "Close Combat", move2: "Close Combat", move3: "Close Combat", move4: "Close Combat");
    PokemonModel armarouge = PokemonModel(name: 'Armarouge', lvl: 50, nature: 'Adamant', ability: 'Protean', hp: 70, atk: 70, def: 70, spa: 70, spd: 70, spe: 70, image: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/448.png", move1: "Close Combat", move2: "Close Combat", move3: "Close Combat", move4: "Close Combat");

    PokemonTeamModel team = PokemonTeamModel(id: 1, user_id: 1, team_name: 'Ninja');
    team.adicionarPokemon(greninja);
    team.adicionarPokemon(ceruledge);
    team.adicionarPokemon(armarouge);

    expect(team.pokemon.length, 3);

    team.removerPokemon('greninja');

    expect(team.pokemon.length, 2);
  });

  test('deve lançar erro ao adicionar mais de 6 Pokémon', () {
    PokemonModel pokemon1 = PokemonModel(name: 'P1', lvl: 50, nature: 'Adamant', ability: 'Protean', hp: 70, atk: 70, def: 70, spa: 70, spd: 70, spe: 70, image: "image.png", move1: "Move1", move2: "Move2", move3: "Move3", move4: "Move4");
    PokemonModel pokemon2 = PokemonModel(name: 'P2', lvl: 50, nature: 'Adamant', ability: 'Protean', hp: 70, atk: 70, def: 70, spa: 70, spd: 70, spe: 70, image: "image.png", move1: "Move1", move2: "Move2", move3: "Move3", move4: "Move4");
    PokemonModel pokemon3 = PokemonModel(name: 'P3', lvl: 50, nature: 'Adamant', ability: 'Protean', hp: 70, atk: 70, def: 70, spa: 70, spd: 70, spe: 70, image: "image.png", move1: "Move1", move2: "Move2", move3: "Move3", move4: "Move4");
    PokemonModel pokemon4 = PokemonModel(name: 'P4', lvl: 50, nature: 'Adamant', ability: 'Protean', hp: 70, atk: 70, def: 70, spa: 70, spd: 70, spe: 70, image: "image.png", move1: "Move1", move2: "Move2", move3: "Move3", move4: "Move4");
    PokemonModel pokemon5 = PokemonModel(name: 'P5', lvl: 50, nature: 'Adamant', ability: 'Protean', hp: 70, atk: 70, def: 70, spa: 70, spd: 70, spe: 70, image: "image.png", move1: "Move1", move2: "Move2", move3: "Move3", move4: "Move4");
    PokemonModel pokemon6 = PokemonModel(name: 'P6', lvl: 50, nature: 'Adamant', ability: 'Protean', hp: 70, atk: 70, def: 70, spa: 70, spd: 70, spe: 70, image: "image.png", move1: "Move1", move2: "Move2", move3: "Move3", move4: "Move4");
    PokemonModel pokemon7 = PokemonModel(name: 'P7', lvl: 50, nature: 'Adamant', ability: 'Protean', hp: 70, atk: 70, def: 70, spa: 70, spd: 70, spe: 70, image: "image.png", move1: "Move1", move2: "Move2", move3: "Move3", move4: "Move4");

    PokemonTeamModel team = PokemonTeamModel(id: 1, user_id: 1, team_name: 'X');
    team.adicionarPokemon(pokemon1);
    team.adicionarPokemon(pokemon2);
    team.adicionarPokemon(pokemon3);
    team.adicionarPokemon(pokemon4);
    team.adicionarPokemon(pokemon5);
    team.adicionarPokemon(pokemon6);

    expect(() => team.adicionarPokemon(pokemon7), throwsException);
  });

  test('deve lançar erro ao adicionar um pokemon existente no time', (){
    PokemonModel pokemon1 = PokemonModel(name: 'P1', lvl: 50, nature: 'Adamant', ability: 'Protean', hp: 70, atk: 70, def: 70, spa: 70, spd: 70, spe: 70, image: "image.png", move1: "Move1", move2: "Move2", move3: "Move3", move4: "Move4");
    PokemonModel pokemon2 = PokemonModel(name: 'P1', lvl: 50, nature: 'Adamant', ability: 'Protean', hp: 70, atk: 70, def: 70, spa: 70, spd: 70, spe: 70, image: "image.png", move1: "Move1", move2: "Move2", move3: "Move3", move4: "Move4");
    
    PokemonTeamModel team = PokemonTeamModel(id: 1, user_id: 1, team_name: 'X');
    team.adicionarPokemon(pokemon1);
    
    expect(() => team.adicionarPokemon(pokemon2), throwsException);
  });


  test('deve lançar erro ao não econtrar o pokemon que será removido', () {
    PokemonModel pokemon1 = PokemonModel(name: 'P1', lvl: 50, nature: 'Adamant', ability: 'Protean', hp: 70, atk: 70, def: 70, spa: 70, spd: 70, spe: 70, image: "image.png", move1: "Move1", move2: "Move2", move3: "Move3", move4: "Move4");
    PokemonModel pokemon2 = PokemonModel(name: 'P2', lvl: 50, nature: 'Adamant', ability: 'Protean', hp: 70, atk: 70, def: 70, spa: 70, spd: 70, spe: 70, image: "image.png", move1: "Move1", move2: "Move2", move3: "Move3", move4: "Move4");
    PokemonModel pokemon3 = PokemonModel(name: 'P3', lvl: 50, nature: 'Adamant', ability: 'Protean', hp: 70, atk: 70, def: 70, spa: 70, spd: 70, spe: 70, image: "image.png", move1: "Move1", move2: "Move2", move3: "Move3", move4: "Move4");
    PokemonModel pokemon4 = PokemonModel(name: 'P4', lvl: 50, nature: 'Adamant', ability: 'Protean', hp: 70, atk: 70, def: 70, spa: 70, spd: 70, spe: 70, image: "image.png", move1: "Move1", move2: "Move2", move3: "Move3", move4: "Move4");
    PokemonModel pokemon5 = PokemonModel(name: 'P5', lvl: 50, nature: 'Adamant', ability: 'Protean', hp: 70, atk: 70, def: 70, spa: 70, spd: 70, spe: 70, image: "image.png", move1: "Move1", move2: "Move2", move3: "Move3", move4: "Move4");
    PokemonModel pokemon6 = PokemonModel(name: 'P6', lvl: 50, nature: 'Adamant', ability: 'Protean', hp: 70, atk: 70, def: 70, spa: 70, spd: 70, spe: 70, image: "image.png", move1: "Move1", move2: "Move2", move3: "Move3", move4: "Move4");
    
    PokemonTeamModel team = PokemonTeamModel(id: 1, user_id: 1, team_name: 'X');
    team.adicionarPokemon(pokemon1);
    team.adicionarPokemon(pokemon2);
    team.adicionarPokemon(pokemon3);
    team.adicionarPokemon(pokemon4);
    team.adicionarPokemon(pokemon5);
    team.adicionarPokemon(pokemon6);

    expect(() => team.removerPokemon('P7'), throwsException);
  });

}