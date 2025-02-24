
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:word_guess/Utils/utils.dart';
import '../../../Widgets/letter_container.dart';
import '../../../Widgets/level_view_widget.dart';
import '../../Controler/LevelControler.dart';
import '../../Spelling_Module/Views/spelling_views.dart';

class Level3View extends StatelessWidget {
  const Level3View({super.key});

  @override
  Widget build(BuildContext context) {
    final LevelController controller = Get.put(
      LevelController(
          validWords: [
            "TOP",
            "TO",
            "OPT"
          ],
          letterPositions: {
            "T": Offset(100, 33),
            "O": Offset(60, 135),
            "P": Offset(145, 135),
          },

          //  nextLevelView: SpellingViewLevel3(), // Move to Level 3 after completion
          nextLevelView: SpellingView(levelIndex: 3)),
      tag: 'level3',
    );

    return LevelScreen(
      controller,
      Obx(
        () => Container(
          height: 200,
          width: 180,
          decoration: BoxDecoration(),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // First row (T)
              letterContainer(
                  controller.completedWords.contains("TOP") ? "T" : "",
                  AppColors.yellowColor),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  letterContainer(
                      (controller.completedWords.contains("TOP") ||
                              controller.completedWords.contains("OPT"))
                          ? "O"
                          : "",
                      AppColors.yellowColor),

                  letterContainer(
                      controller.completedWords.contains("OPT") ? "P" : "",
                      AppColors.yellowColor),
                  letterContainer(
                      (controller.completedWords.contains("TOP") ||
                              controller.completedWords.contains("TO"))
                          ? "T"
                          : "",
                      AppColors.yellowColor),
                  // _buildLetterContainer(
                  //     controller.completedWords.contains("TO")
                  //         ? "T"
                  //         : ""),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  letterContainer(
                      controller.completedWords.contains("TOP") ? "P" : "",
                      AppColors.yellowColor),
                  letterContainer(
                      (controller.completedWords.contains("TOP") ||
                              controller.completedWords.contains("TO"))
                          ? "O"
                          : "",
                      AppColors.yellowColor),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
