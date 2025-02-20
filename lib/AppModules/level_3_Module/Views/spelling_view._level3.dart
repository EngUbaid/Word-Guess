import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:word_guess/AppModules/level_3_Module/Views/level_3_comp;eted_view.dart';
import 'package:word_guess/Widgets/common_spelling_widget.dart';
import '../../../Widgets/next_widget.dart';
import '../../Level1Modile/views/level_completed_view.dart';

class SpellingViewLevel3 extends StatelessWidget {
  const SpellingViewLevel3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CommonSpellingWidget(
      speeling: const Column(
        children: [
          WordTile(
              word: "TOP",
              meaning: "She reached the top of the \n mountain after hours of \n hiking."),
          SizedBox(height: 20),
          WordTile(
              word: "OPT",
              meaning: "You can opt for the salad \n or the soup for lunch."),
          SizedBox(height: 40),
           WordTile(
              word: "TO",
              meaning: "He decided to go to the \nstore before it closed."),
        ],
      ),
      ontap: () {
        Get.offAll(() => LevelthreeCompletedView());
      },
    ));
  }
}
