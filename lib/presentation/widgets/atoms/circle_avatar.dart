import 'package:flutter/material.dart';

class MyCircleAvatar extends StatelessWidget{
  const MyCircleAvatar({
      super.key,
      required this.name,
      required this.imgurl,
    });
  final String name;
  final String imgurl;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
          Stack(
              children: [
                Image.asset(
                  'assets/poke_ball_icon.png',
                  width: 130,
                  height: 130,
                  color: Colors.grey,
                  opacity: AlwaysStoppedAnimation(0.2),
                  ),
                Positioned(
                  left: 14,
                  top: 13,
                  child: Image.asset(
                    imgurl,
                    width: 100,
                    height: 100,
                    ),
                ),
              ],
            ),
          Text(
            name, 
            style: TextStyle(
              fontWeight: FontWeight.w500, 
              fontSize: 20,
            ),
          ),

      ],
    );
  }
}