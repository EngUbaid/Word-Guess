import 'package:flutter/material.dart';

  wordguess() {
    return Column(
      children: [
        Image.asset("assets/word.png"),
        const SizedBox(
          height: 10,
        ),
        Image.asset("assets/wordguest.png"),
      ],
    );
  }