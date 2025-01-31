import 'package:feed_card_project/presentation/widgets/molecules/news_list.dart';
import 'package:flutter/material.dart';

class PokemonNews extends StatelessWidget{
  const PokemonNews({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: NewsList(),
    );
  }
}