import 'package:flutter/material.dart';
import 'package:feed_card_project/presentation/widgets/molecules/category_grid.dart';
import 'package:feed_card_project/presentation/widgets/atoms/search_bar.dart';

class PokemonSearch extends StatelessWidget {
    const PokemonSearch({
        super.key,
      });
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children:[ 
          
          Positioned(
                left: 200,
                top: -200,
                child: Image.asset(
                  'assets/poke_ball_icon.png',
                  width: 400,
                  height: 400,
                  color: Colors.grey,
                  opacity:AlwaysStoppedAnimation(0.2) ,
                  ),
              
              ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top:20.0),
                  child: Text('What pokemon are you looking for?',
                    style: TextStyle(
                      fontSize: 43,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 40),
                MySearchBar(text:'Search Pokemon, Move, Ability etc'),
                SizedBox(height: 40),
                CategoryGrid(),
              ],
            ),
          ),
        ]
      ),
    );
  }
}