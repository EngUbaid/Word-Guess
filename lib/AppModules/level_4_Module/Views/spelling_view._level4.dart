import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:word_guess/AppModules/level_4_Module/Views/level_4_comp;eted_view.dart';
import 'package:word_guess/AppModules/level_4_Module/Views/level_4_view.dart';
import 'package:word_guess/Widgets/common_spelling_widget.dart';
import '../../../Widgets/next_widget.dart';
import '../../Level1Modile/views/level_completed_view.dart';

class SpellingViewLevel4 extends StatelessWidget {
  const SpellingViewLevel4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CommonSpellingWidget(
      speeling: const Column(
        children: [
          WordTile(
              word: "SALT",
              meaning: "She added salt to enhance \n the flavor of the dish."),
          SizedBox(height: 20),
          WordTile(
              word: "LAST",
              meaning: "This will be the last time we \n discuss this topic."),
          SizedBox(height: 20),
           WordTile(
              word: "ALT",
              meaning: "The alt of the mountain was \n impressive and breathtaking."),
                SizedBox(height: 20),
           WordTile(
              word: "TALS",
              meaning: "The children built tall \n towers with their tals.."),
        ],
      ),
      ontap: () {
        Get.offAll(() => LevelfourCompletedView());
      },
    ));
  }
}
