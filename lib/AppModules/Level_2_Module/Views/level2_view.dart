import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:word_guess/AppModules/Level1Modile/views/spelling_view._level1.dart';
import 'package:word_guess/Utils/utils.dart';
import '../../../Widgets/letter_container.dart';
import '../../../Widgets/level_view_widget.dart';
import '../../level_3_Module/Views/level_3_view.dart';
import '../Controler/LevelController.dart';
import 'spelling_view.dart';

class Level2View extends StatelessWidget {
  const Level2View({super.key});

  @override
  Widget build(BuildContext context) {
   
    final LevelController controller = Get.put(
      LevelController(
        validWords: ["TAP", "PAT", "AT"],
        letterPositions: {
          "A": Offset(100, 33),
          "P": Offset(45, 130),
          "T": Offset(145, 130),
        },
        nextLevelView: SpellingViewlevel2(),
      ),
      tag: 'level2', // Ensures a new instance is created
    );

    return LevelScreen(
      controller,
      Obx(
        () => Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                letterContainer(
                    controller.completedWords.contains("TAP") ? "T" : "",
                    AppColors.buttonColor),
                letterContainer(
                    controller.completedWords.contains("TAP") ||
                            controller.completedWords.contains("AT")
                        ? "A"
                        : "",
                    AppColors.buttonColor),
                letterContainer(
                    controller.completedWords.contains("TAP") ||
                            controller.completedWords.contains("PAT")
                        ? "P"
                        : "",
                    AppColors.buttonColor),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  letterContainer(
                      controller.completedWords.contains("AT") ? "T" : "",
                      AppColors.buttonColor),
                  letterContainer(
                      controller.completedWords.contains("PAT") ? "A" : "",
                      AppColors.buttonColor),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 100.0),
              child: letterContainer(
                  controller.completedWords.contains("PAT") ? "T" : "",
                  AppColors.buttonColor),
            ),
          ],
        ),
      ),
    );
  }
}
