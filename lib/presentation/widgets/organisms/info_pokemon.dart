import 'package:feed_card_project/presentation/widgets/molecules/evolution_page.dart';
import 'package:flutter/material.dart';

class InfoPokemon extends StatelessWidget {
  const InfoPokemon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          const EdgeInsets.only(top: 40), // Para darle un padding a la caja
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
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
                Tab(text: 'About'),
                Tab(text: 'Base Stats'),
                Tab(text: 'Evolution'),
                Tab(text: 'Moves'),
              ],
            ),
            Expanded(
              child: TabBarView(
                physics: BouncingScrollPhysics(),
                children: [
                  Center(child: Text('Página de Inicio')),
                  Center(child: Text('Página de Búsqueda')),
                  SingleChildScrollView(child: EvolutionPage()),
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
