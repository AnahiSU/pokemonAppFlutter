import 'package:flutter/material.dart';

class MainPokemon extends StatelessWidget{
  const MainPokemon({
      super.key,
      required this.imgurl,
      required this.color,
    });
  final Color color;
  final String imgurl;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              children: [
                Image.asset(
                  'assets/poke_ball_icon.png',
                  width: 320,
                  height: 320,
                  color: color,
                  opacity: AlwaysStoppedAnimation(0.2),
                  ),
                Positioned(
                  bottom: -1,
                  right: -1,
                  child: Image.asset(
                    'assets/bulbasur.png',
                    width: 330,
                    height: 330,
                    ),
                ),
              ],
            )
          ),
      ],
    );
  }
}