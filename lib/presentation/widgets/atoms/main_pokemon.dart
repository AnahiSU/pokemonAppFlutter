import 'package:flutter/material.dart';

class MainPokemon extends StatelessWidget {
  const MainPokemon({
    required this.imgurl,
    required this.color,
    super.key,
  });

  final Color color;
  final String imgurl;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 300,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            'assets/poke_ball_icon.png',
            width: 300,
            height: 300,
            color: color,
            opacity: const AlwaysStoppedAnimation(0.2),
          ),
          Image.asset(
            imgurl,
            width: 250,
            height: 250,
            fit: BoxFit.contain,
          ),
        ],
      ),
    );
  }
}
