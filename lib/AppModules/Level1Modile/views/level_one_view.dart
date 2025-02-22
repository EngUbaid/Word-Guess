import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:word_guess/Utils/utils.dart';
import 'package:word_guess/main.dart';
import '../../../Widgets/letter_container.dart';
import '../../../Widgets/level_view_widget.dart';
import '../../Controler/LevelControler.dart';
import '../../Spelling_Module/Views/spelling_views.dart';

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
        // nextLevelView: SpellingViewLevel1(),
        nextLevelView: SpellingView(levelIndex: 1)
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
                                AppColors.buttonColor),
                            letterContainer(
                                controller.completedWords.isNotEmpty ? "C" : "",
                                AppColors.buttonColor),
                            letterContainer(
                                controller.completedWords.contains("ACT")
                                    ? "T"
                                    : "",
                                AppColors.buttonColor),
                          ],
                        ),
                        letterContainer(
                            controller.completedWords.contains("CAT")
                                ? "A"
                                : "",
                            AppColors.buttonColor),
                        letterContainer(
                            controller.completedWords.contains("CAT")
                                ? "T"
                                : "",
                            AppColors.buttonColor),
                      ],
                    ),
                  ),
                ])));
  }
}
