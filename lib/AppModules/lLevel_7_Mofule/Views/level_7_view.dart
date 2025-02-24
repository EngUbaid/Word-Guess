import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:word_guess/Utils/utils.dart';
import '../../../Widgets/letter_container.dart';
import '../../../Widgets/level_view_widget.dart';
import '../../Controler/LevelControler.dart';
import '../../Spelling_Module/Views/spelling_views.dart';

class Level7View extends StatelessWidget {
  const Level7View({super.key});

  @override
  Widget build(BuildContext context) {
    final LevelController controller = Get.put(
      LevelController(validWords: [
        "EAT",
        "MEAT",
        "TEAM",
        "ATE",
        "TEA",
      ], letterPositions: {
        "A": Offset(100, 33),
        "M": Offset(40, 100),
        "T": Offset(160, 100),
        "E": Offset(100, 150),
      }, nextLevelView: SpellingView(levelIndex: 7)),
      tag: 'level7',
    );

    return LevelScreen(
      controller,
      Obx(
        () => Container(
          height: 180,
          width: 300,
          decoration: const BoxDecoration(),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  letterContainer(
                      controller.completedWords.contains("MEAT") ? "M" : "",
                      AppColors.yellowColor),
                  letterContainer(
                      (controller.completedWords.contains("MEAT") ||
                              controller.completedWords.contains("EAT"))
                          ? "E"
                          : "",
                      AppColors.yellowColor),
                  letterContainer(
                      (controller.completedWords.contains("MEAT") ||
                              controller.completedWords.contains("ATE"))
                          ? "A"
                          : "",
                      AppColors.yellowColor),
                  letterContainer(
                      (controller.completedWords.contains("MEAT") ||
                              controller.completedWords.contains("TEA"))
                          ? "T"
                          : "",
                      AppColors.yellowColor),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 60.0),
                child: Row(
                  children: [
                    letterContainer(
                        controller.completedWords.contains("EAT") ? "A" : "",
                        AppColors.yellowColor),
                    letterContainer(
                        controller.completedWords.contains("ATE") ? "T" : "",
                        AppColors.yellowColor),
                    letterContainer(
                        controller.completedWords.contains("TEA") ? "E" : "",
                        AppColors.yellowColor),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 60.0),
                child: Row(
                  children: [
                    letterContainer(
                        (controller.completedWords.contains("EAT") ||
                                controller.completedWords.contains("TEAM"))
                            ? "T"
                            : "",
                        AppColors.yellowColor),
                    letterContainer(
                        (controller.completedWords.contains("ATE") ||
                                controller.completedWords.contains("TEAM"))
                            ? "E"
                            : "",
                        AppColors.yellowColor),
                    letterContainer(
                        (controller.completedWords.contains("TEA") ||
                                controller.completedWords.contains("TEAM"))
                            ? "A"
                            : "",
                        AppColors.yellowColor),
                    letterContainer(
                        controller.completedWords.contains("TEAM") ? "M" : "",
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
