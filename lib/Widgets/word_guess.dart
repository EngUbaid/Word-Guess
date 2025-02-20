import 'package:flutter/material.dart';

  wordguess() {
    return Column(
      children: [
        Image.asset("assets/word.png"),
        SizedBox(
          height: 10,
        ),
        Image.asset("assets/wordguest.png"),
      ],
    );
  }