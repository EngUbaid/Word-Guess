import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:word_guess/Utils/utils.dart';
import '../../../Widgets/letter_container.dart';
import '../../../Widgets/level_view_widget.dart';
import '../../Controler/LevelControler.dart';
import '../../Spelling_Module/Views/spelling_views.dart';

class Level8View extends StatelessWidget {
  const Level8View({super.key});

  @override
  Widget build(BuildContext context) {
    final LevelController controller = Get.put(
      LevelController(validWords: [
        "PANS",
        "SNAP",
        "NAPS",
        "AND",
      ], letterPositions: {
        "S": Offset(100, 33),
        "P": Offset(40, 100),
        "N": Offset(160, 100),
        "A": Offset(100, 150),
      }, nextLevelView: SpellingView(levelIndex: 8)),
      tag: 'level8',
    );

    return LevelScreen(
      controller,
      Obx(
        () => Container(
          height: 240,
          width: 360,
          decoration: const BoxDecoration(),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60.0),
                child: Row(
                  children: [
                    letterContainer(
                        controller.completedWords.contains("SNAP") ? "S" : "",
                        AppColors.yellowColor),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60.0),
                child: Row(
                  children: [
                    letterContainer(
                        (controller.completedWords.contains("NAPS") ||
                                controller.completedWords.contains("SNAP"))
                            ? "N"
                            : "",
                        AppColors.yellowColor),
                    letterContainer(
                        controller.completedWords.contains("NAPS") ? "A" : "",
                        AppColors.yellowColor),
                    letterContainer(
                        controller.completedWords.contains("NAPS") ? "P" : "",
                        AppColors.yellowColor),
                    letterContainer(
                        controller.completedWords.contains("NAPS") ? "S" : "",
                        AppColors.yellowColor),
                  ],
                ),
              ),
              Row(
                children: [
                  letterContainer(
                      controller.completedWords.contains("PANS") ? "P" : "",
                      AppColors.yellowColor),
                  letterContainer(
                      (controller.completedWords.contains("PANS") ||
                              controller.completedWords.contains("SNAP"))
                          ? "A"
                          : "",
                      AppColors.yellowColor),
                  letterContainer(
                      controller.completedWords.contains("PANS") ? "N" : "",
                      AppColors.yellowColor),
                  letterContainer(
                      controller.completedWords.contains("PANS") ? "S" : "",
                      AppColors.yellowColor),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 60.0),
                child: Row(
                  children: [
                    letterContainer(
                        controller.completedWords.contains("SNAP") ? "P" : "",
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
