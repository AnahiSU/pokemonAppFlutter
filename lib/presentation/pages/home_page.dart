import 'package:feed_card_project/presentation/providers/toggle_theme.dart';
import 'package:feed_card_project/presentation/widgets/organisms/pokemon_news.dart';
import 'package:feed_card_project/presentation/widgets/organisms/pokemon_search.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool switchVal = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pokemon'),
        actions: [
          //REVISAR
          Switch(
            value: switchVal,
            onChanged: (value) {
              setState(() {
                switchVal = !switchVal;
              });
              context.read<ChangeTheme>().changeTheme();
            },
          ),
        ],
      ),
      body: const SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              PokemonSearch(),
              PokemonNews(),
            ],
          ),
        ),
      ),
    );
  }
}
