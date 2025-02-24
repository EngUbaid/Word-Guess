import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:word_guess/AppModules/Level_Completed_Module/views/level_completed_view.dart';
import 'package:word_guess/Widgets/common_spelling_widget.dart';
import '../../../Model/levelModel.dart';
import '../../../Utils/utils.dart';
import '../../../Widgets/next_widget.dart';

class SpellingView extends StatelessWidget {
  final int levelIndex;
  const SpellingView({super.key, required this.levelIndex});

  @override
  Widget build(BuildContext context) {
    final box = GetStorage();

    LevelModel currentLevel =
        levels.firstWhere((level) => level.levelNumber == levelIndex);

    return Scaffold(
      body: CommonSpellingWidget(
        speeling: Column(
          children: currentLevel.words
              .map((wordData) => Column(
                    children: [
                      WordTile(
                        word: wordData.word,
                        meaning: wordData.meaning,
                      ),
                    ],
                  ))
              .toList(),
        ),
        ontap: () {
          box.write('completedLevel', levelIndex);
          Get.offAll(() => LevelCompletedViews(levelIndex: levelIndex));
        },
      ),
    );
  }
}
