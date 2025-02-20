import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:word_guess/AppModules/Level1Modile/views/spelling_view._level1.dart';
import 'package:word_guess/AppModules/Level_2_Module/Views/level2_view.dart';
import 'package:word_guess/Utils/utils.dart';
import '../../../Widgets/letter_container.dart';
import '../../../Widgets/level_view_widget.dart';
import '../../Level_2_Module/Controler/LevelController.dart';

class LevelOneView extends StatelessWidget {
  const LevelOneView({super.key});

  @override
  Widget build(BuildContext context) {
    final LevelController controller = Get.put(
      LevelController(
        validWords: ["ACT", "CAT"],
        letterPositions: {
          "A": Offset(100, 33),
          "C": Offset(50, 135),
          "T": Offset(145, 135),
        },

        nextLevelView: SpellingViewLevel1(),
        
      ),
      
    );

    return LevelScreen(
        controller,
        Obx(() => Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 80.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            letterContainer(
                                controller.completedWords.contains("ACT")
                                    ? "A"
                                    : "",
                                AppColors.boxblueColor),
                            letterContainer(
                                controller.completedWords.isNotEmpty ? "C" : "",
                                AppColors.boxblueColor),
                            letterContainer(
                                controller.completedWords.contains("ACT")
                                    ? "T"
                                    : "",
                                AppColors.boxblueColor),
                          ],
                        ),
                        letterContainer(
                            controller.completedWords.contains("CAT")
                                ? "A"
                                : "",
                            AppColors.boxblueColor),
                        letterContainer(
                            controller.completedWords.contains("CAT")
                                ? "T"
                                : "",
                            AppColors.boxblueColor),
                      ],
                    ),
                  ),
                ])));
  }
}
