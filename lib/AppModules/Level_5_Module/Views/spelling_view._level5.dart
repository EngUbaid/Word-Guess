import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:word_guess/AppModules/Level_5_Module/Views/level_5_comp;eted_view.dart';
import 'package:word_guess/Widgets/common_spelling_widget.dart';
import '../../../Widgets/next_widget.dart';
import '../../Level1Modile/views/level_completed_view.dart';

class SpellingViewLevel5 extends StatelessWidget {
  const SpellingViewLevel5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CommonSpellingWidget(
      speeling: const Column(
        children: [
          WordTile(
              word: "ART",
              meaning: "She expressed her \n feelings through art."),
          SizedBox(height: 20),
          WordTile(
              word: "TEAR",
              meaning: "He began to tear the paper \n for the project."),
          SizedBox(height: 40),
           WordTile(
              word: "RATE",
              meaning: "The company decided to \n rate the products based on \n quality."),
              SizedBox(height: 20),
           WordTile(
              word: "EAR",
              meaning: "She covered her ear to \n block out the loud noise."),
        ],
      ),
      ontap: () {
        Get.offAll(() => LevelfiveCompletedView());
      },
    ));
  }
}
