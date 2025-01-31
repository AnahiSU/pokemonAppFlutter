import 'package:flutter/material.dart';

class NewsMiniDisplay extends StatelessWidget{
  const NewsMiniDisplay({
    super.key,
    required this.text,
    required this.date,
  });
  final String text;
  final String date;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(text,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            ),
                        ),
                    Text(date,
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontWeight: FontWeight.bold,
                      ),),
                  ],
                ),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                  'assets/ashWin.jpg',
                  fit: BoxFit.cover,
                  width: 130,
                  height: 80,
              ),
            )
          ],
      ),
    );
  }
}