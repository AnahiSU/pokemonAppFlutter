import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  const MainButton({
    required this.title,
    required this.color,
    //this.onTap,
    super.key,
  });

  final String title;
  final Color color;
  //final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 10,
        ),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: color,
            blurRadius: 8,
          )
        ],
        
      ),
      child:Stack(
          children: [
            Positioned(
              right: -40,
              bottom: -15,
              child: Image.asset(
                'assets/poke_ball_icon.png',
                width: 100,
                height: 100,
                color: Colors.white,
                opacity:AlwaysStoppedAnimation(0.3) 
                ),
            
            ),
            Row(
              children: [
                Center(
                  child: Text(
                    title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,)
                  ),
                )
              ],
            ),
          ],
        ),
    );
  }
}
