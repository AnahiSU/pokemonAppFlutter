import 'package:feed_card_project/presentation/widgets/atoms/characteristics_button.dart';
import 'package:feed_card_project/presentation/widgets/atoms/main_pokemon.dart';
import 'package:feed_card_project/presentation/widgets/organisms/info_pokemon.dart';
import 'package:flutter/material.dart';

class PokemonPage extends StatelessWidget{
  const PokemonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 25, 221, 159),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.arrow_back, color: Colors.white,),
                      Icon(Icons.favorite_border,color: Colors.white,),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                          
                    Text(
                      'Bulbasur',
                      style: TextStyle(
                        fontSize: 45,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      '#001',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CharacteristicsButton(text: 'Grass', color: const Color.fromARGB(255, 78, 250, 181)),
                          SizedBox(width: 8,),
                          CharacteristicsButton(text: 'Poisson', color: const Color.fromARGB(255, 78, 250, 181)),
                        ],
                      ),
                      Text(
                        'Seed Pokemon',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            MainPokemon(imgurl: 'assets/bulbasur.png', color: const Color.fromARGB(255, 255, 255, 255)),
            const Expanded(child: InfoPokemon()),
          ],
        )
      )
    );
  }
}
