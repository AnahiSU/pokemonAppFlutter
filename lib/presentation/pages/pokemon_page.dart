import 'package:feed_card_project/presentation/widgets/atoms/main_pokemon.dart';
import 'package:feed_card_project/presentation/widgets/organisms/info_pokemon.dart';
import 'package:feed_card_project/presentation/widgets/organisms/pokemon_header.dart';
import 'package:flutter/material.dart';

class PokemonPage extends StatelessWidget {
  const PokemonPage({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 25, 221, 159),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite_border),
          ),
        ],
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 25, 221, 159),
      body: Stack(
        children: [
          Column(
            children: [
              const PokemonHeader(),
              SizedBox(
                height:
                    height * 0.3, // Saca el 30% de la altura de la pantalla
              ),
              const Expanded(child: InfoPokemon()),
            ],
          ),
          // Imagen del Pokémon superpuesta
          const Positioned(
            top: 200,
            left: 0,
            right: 0,
            child: Center(
              child: MainPokemon(
                imgurl: 'assets/bulbasur.png',
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
