import 'package:flutter/material.dart';

class CharacteristicsButton extends StatelessWidget{
  const CharacteristicsButton({
      super.key,
      required this.text,
      required this.color,
    });

    final String text;
    final Color color;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: (){},
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(color),
      ),
      child: Text(
        text, 
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16
        ),
      )
    );
  }
}