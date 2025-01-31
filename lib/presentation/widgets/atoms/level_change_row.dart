import 'package:flutter/material.dart';

class LevelChangeRow extends StatelessWidget{
  const LevelChangeRow({
    
      super.key,
      required this.text,
    });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(Icons.arrow_forward, color: Colors.grey[300],size: 26,),
        SizedBox(height: 8,),
        Text(text, style: TextStyle(fontWeight: FontWeight.bold),),
      ],
    );
  }
}