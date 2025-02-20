
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:word_guess/AppModules/Level_5_Module/Views/spelling_view._level5.dart';
import 'package:word_guess/Utils/utils.dart';
import '../../../Widgets/letter_container.dart';
import '../../../Widgets/level_view_widget.dart';
import '../../Level_2_Module/Controler/LevelController.dart';
import '../../level_6_Module/Views/level_6_view.dart';

class Level5View extends StatelessWidget {
  const Level5View({super.key});

  @override
  Widget build(BuildContext context) {
    final LevelController controller = Get.put(
      LevelController(
        validWords: ["TEAR", "RATE", "EAR", "ART"],
        letterPositions: {
          "A": Offset(100, 33),
          "E": Offset(40, 100),
          "R": Offset(160, 100),
          "T": Offset(100, 150),
        },

        nextLevelView: SpellingViewLevel5(), // Move to Level 3 after completion
      ),
       tag: 'level5',
    );

    return LevelScreen(
      controller,
      Obx(
        () => SizedBox(
          width: 390,
          height: 300,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // First row (T)
              Padding(
                padding: const EdgeInsets.only(left: 60.0),
                child: letterContainer(
                    controller.completedWords.contains("TEAR") ? "T" : "",
                    AppColors.yellowColor),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 60.0),
                child: letterContainer(
                    controller.completedWords.contains("TEAR") ? "E" : "",
                    AppColors.yellowColor),
              ),

              Row(
                children: [
                  letterContainer(
                      controller.completedWords.contains("RATE") ? "R" : "",
                      AppColors.yellowColor),
                  letterContainer(
                      (controller.completedWords.contains("RATE") ||
                              controller.completedWords.contains("TEAR"))
                          ? "A"
                          : "",
                      AppColors.yellowColor),

                  letterContainer(
                      controller.completedWords.contains("RATE") ? "T" : "",
                      AppColors.yellowColor),
                  letterContainer(
                      (controller.completedWords.contains("RATE") ||
                              controller.completedWords.contains("EAR"))
                          ? "E"
                          : "",
                      AppColors.yellowColor),
                  // _buildLetterContainer(
                  //     controller.completedWords.contains("RATE")
                  //         ? "E"
                  //         : ""),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 60.0),
                    child: letterContainer(
                        controller.completedWords.contains("TEAR") ? "R" : "",
                        AppColors.yellowColor),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 60.0),
                    child: letterContainer(
                        (controller.completedWords.contains("ART") ||
                                controller.completedWords.contains("EAR"))
                            ? "A"
                            : "",
                        AppColors.yellowColor),
                  ),
                  letterContainer(
                      controller.completedWords.contains("ART") ? "R" : "",
                      AppColors.yellowColor),
                  letterContainer(
                      controller.completedWords.contains("ART") ? "T" : "",
                      AppColors.yellowColor),
                ],
              ),

              // Third row (P O)
              Padding(
                padding: const EdgeInsets.only(left: 180.0),
                child: Row(
                  children: [
                    letterContainer(
                        controller.completedWords.contains("EAR") ? "R" : "",
                        AppColors.yellowColor),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
