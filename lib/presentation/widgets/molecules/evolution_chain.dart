import 'package:feed_card_project/presentation/widgets/atoms/level_change_row.dart';
import 'package:flutter/material.dart';
import 'package:feed_card_project/presentation/widgets/atoms/circle_avatar.dart';

class EvolutionChain extends StatelessWidget {
  const EvolutionChain({
    super.key,
    required this.firstName,
    required this.secondName,
    required this.level,
    required this.url1,
    required this.url2,
  });
  final String firstName;
  final String secondName;
  final String level;
  final String url1;
  final String url2;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MyCircleAvatar(name: firstName , imgurl:url1),
        Padding(
          padding: const EdgeInsets.only(top: 50.0, right: 25, left: 25),
          child: LevelChangeRow(text: level),
        ),
        MyCircleAvatar(name: secondName, imgurl:url2),
      ],
    );
  }
}