import 'package:feed_card_project/presentation/widgets/molecules/evolution_chain.dart';
import 'package:flutter/material.dart';

class EvolutionPage extends StatelessWidget{
  const EvolutionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Evolution Chain',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            EvolutionChain(firstName: 'Bulbasur', secondName: 'Ivysaur', level: 'Lvl 16', url1: 'assets/bulbasur.png', url2: 'assets/ivysaur.png'),
            Divider(),
            EvolutionChain(firstName: 'Ivysaur', secondName: 'Venusaur', level: 'Lvl 34', url1: 'assets/ivysaur.png', url2: 'assets/venusaur.png'),
          ],
        ),
      ),
    );
  }
}