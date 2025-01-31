import 'package:flutter/material.dart';

class MySearchBar extends StatelessWidget{
  const MySearchBar({
      required this.text,
      super.key
      }
    );
  
  final String text;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration:InputDecoration(
        prefixIcon: const Icon(Icons.search),
        hintText: text,
        filled: true,
        fillColor: Colors.grey[200],
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}