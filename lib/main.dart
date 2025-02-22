import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';
import 'package:word_guess/AppModules/Level1Modile/views/level_one_view.dart';
import 'package:word_guess/AppModules/SplashModule/Views/splash_loading.dart';
import 'package:word_guess/Widgets/next_widget.dart';

import 'AppModules/Level_Completed_Module/views/level_completed_view.dart';
import 'Widgets/common_spelling_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Word Guess',
      home: LevelOneView(),
    );
  }
}

// class SpellingViewss extends StatelessWidget {
//   final int levelIndex;
//   const SpellingViewss({super.key, required this.levelIndex});

//   @override
//   Widget build(BuildContext context) {
//     // Define spelling words for each level
//     final Map<int, List<Map<String, String>>> levelWords = {
//       1: [
//         {"word": "CAT", "meaning": "The cat sat quietly \n on the windowsill."},
//         {"word": "ACT", "meaning": "They decided to act in \n the school play."}
//       ],
//       2: [
//         {"word": "TAP", "meaning": "She gave a gentle tap on \n the door."},
//         {
//           "word": "PAT",
//           "meaning": "He offered a reassuring pat \n on the back."
//         },
//         {"word": "AT", "meaning": "The meeting will be held at \n noon."}
//       ],
//       3: [
//         {
//           "word": "TOP",
//           "meaning":
//               "She reached the top of the \n mountain after hours of \n hiking."
//         },
//         {
//           "word": "OPT",
//           "meaning": "You can opt for the salad \n or the soup for lunch."
//         },
//         {
//           "word": "TO",
//           "meaning": "He decided to go to the \n store before it closed."
//         }
//       ],
//     };

//     return Scaffold(
//         body: CommonSpellingWidget(
//       speeling: Column(
//         children: levelWords[levelIndex]!
//             .map((wordData) => Column(
//                   children: [
//                     WordTile(
//                         word: wordData["word"]!, meaning: wordData["meaning"]!),
//                     SizedBox(height: 20),
//                   ],
//                 ))
//             .toList(),
//       ),
//       ontap: () {
//         int nextLevel = levelIndex + 1;
//         if (levelWords.containsKey(nextLevel)) {
//           Get.offAll(() => SpellingViewss(levelIndex: nextLevel));
//         } else {
//           Get.offAll(() => LevelCompletedViews(levelIndex: levelIndex));
//         }
//       },
//     ));
//   }
// }

