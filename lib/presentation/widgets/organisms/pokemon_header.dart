import 'package:feed_card_project/presentation/widgets/atoms/characteristics_button.dart';
import 'package:flutter/material.dart';

class PokemonHeader extends StatelessWidget {
  const PokemonHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
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
                  CharacteristicsButton(
                    text: 'Grass',
                    color: Color.fromARGB(255, 78, 250, 181),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  CharacteristicsButton(
                    text: 'Poisson',
                    color: Color.fromARGB(255, 78, 250, 181),
                  ),
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
    );
  }
}
