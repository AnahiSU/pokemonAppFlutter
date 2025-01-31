import 'package:feed_card_project/presentation/widgets/molecules/evolution_page.dart';
import 'package:flutter/material.dart';

class InfoPokemon extends StatelessWidget {
  const InfoPokemon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: const DefaultTabController(
        length: 4,
        child: Column(
          children: [
            TabBar(
              labelColor: Color.fromARGB(255, 0, 0, 0),
              unselectedLabelColor: Color.fromARGB(255, 0, 0, 0),
              indicatorColor: Color.fromARGB(255, 62, 255, 159),
              tabs: [
                Tab(
                  text: 'About',
                ),
                Tab(
                  text: 'Base Stats',
                ),
                Tab(
                  text: 'Evolution',
                ),
                Tab(
                  text: 'Moves',
                ),
              ],
            ),
            SizedBox(
              height: 246,
              child: TabBarView(
                children: [
                  Center(child: Text('Página de Inicio')),
                  Center(child: Text('Página de Búsqueda')),
                  EvolutionPage(),
                  Center(child: Text('Página de Perfil')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}