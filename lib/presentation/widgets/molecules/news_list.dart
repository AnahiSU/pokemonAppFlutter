import 'package:feed_card_project/presentation/widgets/atoms/news_minidiplay.dart';
import 'package:flutter/material.dart';

class NewsList extends StatelessWidget{
  const NewsList({super.key});

  @override
   Widget build(BuildContext context) {
    return  Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Pokemon News',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                Text(
                  'View All',
                  style: TextStyle(
                    fontSize: 18,
                    color:const Color.fromARGB(255, 0, 50, 188),
                    fontWeight: FontWeight.bold,
                  ),),
              ],
            ),
          ),
          Column(
            children: [
              NewsMiniDisplay(text:'Pokemon Rumble Rush Arrives Soon',date:'15 May 2019'),
              Divider(),
              NewsMiniDisplay(text:'Detective Pikachu Slouths Into PokemonGO',date:'16 Jan 2020'),
              Divider(),
              NewsMiniDisplay(text:'Detective Pikachu Slouths Into PokemonGO',date:'16 Jan 2020'),
            ],
          )
          
        ],
    );
  }
}