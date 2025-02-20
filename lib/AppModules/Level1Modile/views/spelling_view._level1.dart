import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:word_guess/Widgets/common_spelling_widget.dart';
import '../../../Widgets/next_widget.dart';
import 'level_completed_view.dart';

class SpellingViewLevel1 extends StatelessWidget {
  const SpellingViewLevel1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CommonSpellingWidget(
      speeling: const Column(
        children: [
          WordTile(
              word: "CAT",
              meaning: "The cat sat quietly \n on the windowsill."),
          SizedBox(height: 20),
          WordTile(
              word: "ACT",
              meaning: "They decided to act in \n the school play."),
          SizedBox(height: 40),
        ],
      ),
      ontap: () {
        Get.offAll(() => LevelCompletedView());
      },
    ));
  }
}
