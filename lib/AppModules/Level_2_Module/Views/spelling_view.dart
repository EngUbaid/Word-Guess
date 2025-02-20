import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:word_guess/AppModules/Level_2_Module/Views/level2_completed_view.dart';
import 'package:word_guess/Widgets/common_spelling_widget.dart';
import '../../../Widgets/next_widget.dart';

class SpellingViewlevel2 extends StatelessWidget {
  const SpellingViewlevel2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CommonSpellingWidget(
      speeling: const Column(
        children: [
          WordTile(
              word: "TAP",
              meaning: "She gave a gentle tap on \n the door"),
          SizedBox(height: 20),
          WordTile(
              word: "PAT",
              meaning: " He offered a reassuring pat \n on the back."),
               SizedBox(height: 20),
          WordTile(
              word: "AT",
              meaning: "The meeting will be held at \n noon."),
          SizedBox(height: 40),
        ],
      ),
      ontap: () {
        Get.offAll(() => LevelTwoCompletedView());
      },
    ));
  }
}
