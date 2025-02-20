import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:word_guess/AppModules/level_4_Module/Views/spelling_view._level4.dart';
import 'package:word_guess/Utils/utils.dart';
import '../../../Widgets/letter_container.dart';
import '../../../Widgets/level_view_widget.dart';
import '../../Level_2_Module/Controler/LevelController.dart';
import '../../Level_5_Module/Views/level_5_view.dart';
import '../../level_3_Module/Views/level_3_view.dart';

class Level4View extends StatelessWidget {
  const Level4View({super.key});

  @override
  Widget build(BuildContext context) {
    final LevelController controller = Get.put(
      LevelController(
        validWords: ["SALT", "ALT", "LAST", "TALS"],
        letterPositions: {
          "A": Offset(100, 33),
          "S": Offset(40, 100),
          "T": Offset(160, 100),
          "L": Offset(100, 145),
        },

        nextLevelView: SpellingViewLevel4(), // Move to Level 3 after completion
      ),
      tag: 'level4',
    );

    return LevelScreen(
      controller,
      Obx(
        () => Container(
          height: 250,
          width: 250,
          decoration: BoxDecoration(),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // First row (T)
              letterContainer(
                  controller.completedWords.contains("SALT") ? "S" : "",
                  AppColors.greenboxColor),

              Row(
                children: [
                  letterContainer(
                      (controller.completedWords.contains("SALT") ||
                              controller.completedWords.contains("ALT"))
                          ? "A"
                          : "",
                      AppColors.greenboxColor),
                  letterContainer(
                      controller.completedWords.contains("ALT") ? "L" : "",
                      AppColors.greenboxColor),
                  letterContainer(
                      controller.completedWords.contains("ALT") ? "T" : "",
                      AppColors.greenboxColor),
                ],
              ),
              Row(
                children: [
                  letterContainer(
                      (controller.completedWords.contains("SALT") ||
                              controller.completedWords.contains("LAST"))
                          ? "L"
                          : "",
                      AppColors.greenboxColor),
                  letterContainer(
                      controller.completedWords.contains("LAST") ? "A" : "",
                      AppColors.greenboxColor),
                  letterContainer(
                      controller.completedWords.contains("LAST") ? "S" : "",
                      AppColors.greenboxColor),
                  letterContainer(
                      controller.completedWords.contains("LAST") ? "T" : "",
                      AppColors.greenboxColor),
                ],
              ),

              // Third row (P O)
              Row(
                children: [
                  letterContainer(
                      (controller.completedWords.contains("SALT") ||
                              controller.completedWords.contains("TALS"))
                          ? "T"
                          : "",
                      AppColors.greenboxColor),
                  letterContainer(
                      controller.completedWords.contains("TALS") ? "A" : "",
                      AppColors.greenboxColor),
                  letterContainer(
                      controller.completedWords.contains("TALS") ? "L" : "",
                      AppColors.greenboxColor),
                  letterContainer(
                      controller.completedWords.contains("TALS") ? "S" : "",
                      AppColors.greenboxColor),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
