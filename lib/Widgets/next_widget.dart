import 'package:flutter/material.dart';

import '../Utils/utils.dart';

class WordTile extends StatelessWidget {
  final String word;
  final String meaning;

  const WordTile({super.key, required this.word, required this.meaning});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          word,
          style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: AppColors.whiteColor),
        ),
        SizedBox(height: 5),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Text(
            meaning,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, color: AppColors.whiteColor),
          ),
        ),
      ],
    );
  }
}
