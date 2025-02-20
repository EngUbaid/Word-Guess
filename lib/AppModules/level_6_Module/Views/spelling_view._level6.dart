import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:word_guess/AppModules/level_6_Module/Views/level_6_comp;eted_view.dart';
import 'package:word_guess/Widgets/common_spelling_widget.dart';
import '../../../Widgets/next_widget.dart';
import '../../Level1Modile/views/level_completed_view.dart';

class SpellingViewLevel6 extends StatelessWidget {
  const SpellingViewLevel6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CommonSpellingWidget(
      speeling: const Column(
        children: [
          WordTile(
              word: "DRIB",
              meaning: "A small drib of paint fell on \n the floor."),
          SizedBox(height: 20),
          WordTile(
              word: "BIRD",
              meaning: "The bird perched on the \n branch, chirping softly."),
          SizedBox(height: 40),
           WordTile(
              word: "BID",
              meaning: "He placed a bid on the \n rare painting at the auction."),
                        SizedBox(height: 20),
           WordTile(
              word: "RIB",
              meaning: "She felt a sharp pain near \n her rib after the fall."),
        ],
      ),
      ontap: () {
        Get.offAll(() => LevelsixCompletedView());
      },
    ));
  }
}
