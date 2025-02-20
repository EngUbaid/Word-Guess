import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:word_guess/AppModules/level_6_Module/Views/spelling_view._level6.dart';
import 'package:word_guess/Utils/utils.dart';
import '../../../Widgets/letter_container.dart';
import '../../../Widgets/level_view_widget.dart';
import '../../Level_2_Module/Controler/LevelController.dart';

class Level6View extends StatelessWidget {
  const Level6View({super.key});

  @override
  Widget build(BuildContext context) {
    final LevelController controller = Get.put(
      LevelController(
        validWords: ["DRIB", "BIRD", "BID", "RIB"],
        letterPositions: {
          "I": Offset(100, 33),
          "B": Offset(40, 100),
          "R": Offset(160, 100),
          "D": Offset(100, 150),
        },

        nextLevelView: SpellingViewLevel6(), 
      ),
       tag: 'level6',
    );

    return LevelScreen(
      controller,
      Obx(
        () => Container(
          alignment: Alignment.centerRight,
          height: 300,
          width: 420,
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // First row (T)
              Padding(
                padding: const EdgeInsets.only(left: 60.0),
                child: letterContainer(
                    controller.completedWords.contains("DRIB") ? "D" : "",
                    AppColors.buttonColor),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 60.0),
                child: letterContainer(
                    controller.completedWords.contains("DRIB") ? "R" : "",
                    AppColors.buttonColor),
              ),

              Row(
                children: [
                  letterContainer(
                      controller.completedWords.contains("RIB") ? "R" : "",
                      AppColors.buttonColor),
                  letterContainer(
                      (controller.completedWords.contains("RIB") ||
                              controller.completedWords.contains("DRIB"))
                          ? "I"
                          : "",
                      AppColors.buttonColor),
                  letterContainer(
                      (controller.completedWords.contains("RIB") ||
                              controller.completedWords.contains("BID"))
                          ? "B"
                          : "",
                      AppColors.buttonColor),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 60.0),
                    child: letterContainer(
                        (controller.completedWords.contains("DRIB") ||
                                controller.completedWords.contains("BIRD"))
                            ? "B"
                            : "",
                        AppColors.buttonColor),
                  ),
                  letterContainer(
                      (controller.completedWords.contains("BIRD") ||
                              controller.completedWords.contains("BID"))
                          ? "I"
                          : "",
                      AppColors.buttonColor),
                  letterContainer(
                      controller.completedWords.contains("BIRD") ? "R" : "",
                      AppColors.buttonColor),
                  letterContainer(
                      controller.completedWords.contains("BIRD") ? "D" : "",
                      AppColors.buttonColor),
                ],
              ),

              // Third row (P O)
              Padding(
                padding: const EdgeInsets.only(left: 120.0),
                child: Row(
                  children: [
                    letterContainer(
                        controller.completedWords.contains("BID") ? "D" : "",
                        AppColors.buttonColor),
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
