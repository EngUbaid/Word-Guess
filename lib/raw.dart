// import 'dart:ui';

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:word_guess/Widgets/level_view_widget.dart';

// import 'Utils/utils.dart';
// import 'Widgets/common_spelling_widget.dart';
// import 'Widgets/letter_container.dart';
// import 'Widgets/level_completed_Widget.dart';
// import 'Widgets/next_widget.dart';

// class LevelModel {
//   final int levelNumber;
//   final List<String> validWords;
//   final Map<String, Offset> letterPositions;
//   final List<WordMeaning> wordMeanings;

//   LevelModel({
//     required this.levelNumber,
//     required this.validWords,
//     required this.letterPositions,
//     required this.wordMeanings,
//   });
// }

// class WordMeaning {
//   final String word;
//   final String meaning;

//   WordMeaning({required this.word, required this.meaning});
// }



// final List<LevelModel> levels = [
//   LevelModel(
//     levelNumber: 1,
//     validWords: ["ACT", "CAT"],
//     letterPositions: {"A": Offset(100, 33), "C": Offset(50, 135), "T": Offset(145, 135)},
//     wordMeanings: [
//       WordMeaning(word: "CAT", meaning: "The cat sat quietly \n on the windowsill."),
//       WordMeaning(word: "ACT", meaning: "They decided to act in \n the school play."),
//     ],
//   ),
//   LevelModel(
//     levelNumber: 2,
//     validWords: ["TAP", "PAT", "AT"],
//     letterPositions: {"A": Offset(100, 33), "P": Offset(45, 130), "T": Offset(145, 130)},
//     wordMeanings: [
//       WordMeaning(word: "TAP", meaning: "She gave a gentle tap on \n the door"),
//       WordMeaning(word: "PAT", meaning: "He offered a reassuring pat \n on the back."),
//       WordMeaning(word: "AT", meaning: "The meeting will be held at \n noon."),
//     ],
//   ),
//   // Add more levels as needed...
// ];



// class LevelController extends GetxController {
//   final LevelModel levelData;
//   RxList<Offset> points = <Offset>[].obs;
//   RxList<Offset> connectedPoints = <Offset>[].obs;
//   RxSet<String> completedWords = <String>{}.obs;

//   LevelController({required this.levelData});

//   void handleDrawnPath() {
//     String formedWord = "";
//     List<Offset> tempConnectedPoints = [];

//     for (var point in points) {
//       levelData.letterPositions.forEach((letter, position) {
//         if ((point - position).distance < 40 && !formedWord.contains(letter)) {
//           formedWord += letter;
//           tempConnectedPoints.add(position);
//         }
//       });
//     }

//     connectedPoints.assignAll(tempConnectedPoints);

//     if (levelData.validWords.contains(formedWord)) {
//       completedWords.add(formedWord);
//     }

//     Future.delayed(Duration(seconds: 1), connectedPoints.clear);

//     if (completedWords.length >= levelData.validWords.length) {
//       Future.delayed(Duration(seconds: 1), () {
//         final nextLevel = levelData.levelNumber + 1;
//         if (nextLevel <= levels.length) {
//           Get.offAll(() => LevelView(levelData: levels[nextLevel - 1]));
//         } else {
//           Get.offAll(() => const GameCompletedView());
//         }
//       });
//     }
//   }
// }



// class LevelView extends StatelessWidget {
//   final LevelModel levelData;

//   const LevelView({super.key, required this.levelData});

//   @override
//   Widget build(BuildContext context) {
//     final controller = Get.put(LevelController(levelData: levelData), tag: 'level_${levelData.levelNumber}');

//     return LevelScreen(
//       controller,
//       Obx(
//         () => Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: levelData.validWords.map((word) {
//             return Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: word.split('').map((letter) {
//                 return letterContainer(
//                   controller.completedWords.contains(word) ? letter : "",
//                   AppColors.boxblueColor,
//                 );
//               }).toList(),
//             );
//           }).toList(),
//         ),
//       ),
//     );
//   }
// }



// class SpellingView extends StatelessWidget {
//   final LevelModel levelData;

//   const SpellingView({super.key, required this.levelData});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: CommonSpellingWidget(
//         speeling: Column(
//           children: levelData.wordMeanings.map((wm) => WordTile(word: wm.word, meaning: wm.meaning)).toList(),
//         ),
//         ontap: () => Get.offAll(() => LevelCompletedView(levelData: levelData)),
//       ),
//     );
//   }
// }




// class LevelCompletedView extends StatelessWidget {
//   final LevelModel levelData;

//   const LevelCompletedView({super.key, required this.levelData});

//   @override
//   Widget build(BuildContext context) {
//     final nextLevel = levelData.levelNumber + 1;

//     return Scaffold(
//       body: LevelCompletedWidget(
//         tittle: "Level ${levelData.levelNumber}",
//         page: nextLevel <= levels.length ? LevelView(levelData: levels[nextLevel - 1]) : const GameCompletedView(),
//       ),
//     );
//   }
// }


// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get_storage/get_storage.dart';
// import 'package:word_guess/AppModules/Level_Completed_Module/views/level_completed_view.dart';
// import 'package:word_guess/Widgets/common_spelling_widget.dart';

// import '../../../Widgets/next_widget.dart';

// class SpellingView extends StatelessWidget {
//   final int levelIndex;
//   const SpellingView({super.key, required this.levelIndex});

//   @override
//   Widget build(BuildContext context) {
//     final box = GetStorage();

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
//               "She reached the top of the \n mountain after hours of hiking."
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
// 4: [
//   {
//     "word": "SALT",
//     "meaning": "She added salt to enhance \n the flavor of the dish."
//   },
//   {
//     "word": "LAST",
//     "meaning": "This will be the last time we \n discuss this topic."
//   },
//   {
//     "word": "ALT",
//     "meaning":
//         "The alt of the mountain was \n impressive and breathtaking."
//   },
//   {
//     "word": "TALS",
//     "meaning": "The children built tall \n towers with their tals."
//   }
// ],
// 5: [
//   {
//     "word": "ART",
//     "meaning": "She expressed her \n feelings through art."
//   },
//   {
//     "word": "TEAR",
//     "meaning": "He began to tear the paper \n for the project."
//   },
//   {
//     "word": "RATE",
//     "meaning":
//         "The company decided to \n rate the products based on \n quality."
//   },
//   {
//     "word": "EAR",
//     "meaning": "She covered her ear to \n block out the loud noise."
//   }
// ],
// 6: [
//   {
//     "word": "DRIB",
//     "meaning": "A small drib of paint fell on \n the floor."
//   },
//   {
//     "word": "BIRD",
//     "meaning": "The bird perched on the \n branch, chirping softly."
//   },
//   {
//     "word": "BID",
//     "meaning": "He placed a bid on the \n rare painting at the auction."
//   },
//   {
//     "word": "RIB",
//     "meaning": "She felt a sharp pain near \n her rib after the fall."
//   }
// ],
// 7: [
//   {
//     "word": "EAT",
//     "meaning": "She loves to eat fresh fruits \n every morning."
//   },
//   {
//     "word": "MEAT",
//     "meaning": "The chef carefully prepared \n the meat for the dish."
//   },
//   {
//     "word": "ATE",
//     "meaning": "He quickly ate the sandwich \n before the meeting."
//   },
//   {
//     "word": "TEAM",
//     "meaning": "The team worked hard to \n complete the project."
//   },
//   {
//     "word": "TEA",
//     "meaning": "TShe sipped her tea while \n reading a book."
//   }
// ],
// 8: [
//   {"word": "PANS", "meaning": "She bought new pans \n for the kitchen."},
//   {
//     "word": "SNAP",
//     "meaning": "He took a quick snap of the \n beautiful sunset.."
//   },
//   {"word": "NAPS", "meaning": "He often naps during his \n lunch break."},
//   {
//     "word": "AND",
//     "meaning": "She invited her friends and \n family to the party."
//   }
// ],
// 9: [
//   {"word": "PRAY", "meaning": "He knelt to pray for guidance."},
//   {
//     "word": "PAY",
//     "meaning": "She promised to pay the \n money by tomorrow."
//   },
//   {
//     "word": "YAP",
//     "meaning": "The dog continued to yap at \n the mailman."
//   },
//   {
//     "word": "RAY",
//     "meaning": "A ray of sunlight entered \n through the window."
//   },
//   {
//     "word": "PAR",
//     "meaning": "He made par on the \n challenging golf course."
//   }
// ],
// 10: [
//   {
//     "word": "BLOW",
//     "meaning": "A strong wind could blow the \n leaves off the trees."
//   },
//   {
//     "word": "BOW",
//     "meaning": "He gave a respectful bow \n to the audience."
//   },
//   {"word": "BOWL", "meaning": "She placed the salad in \n a large bowl."},
//   {
//     "word": "OWL",
//     "meaning": "The owl hooted softly in \n the quiet forest."
//   }
// ],
// 11: [
//   {
//     "word": "DRIP",
//     "meaning": "Water began to drip from the \n leaky faucet."
//   },
//   {
//     "word": "RID",
//     "meaning": "She wanted to rid the clutter from her \n room."
//   },
//   {
//     "word": "RIP",
//     "meaning": "He accidentally ripped his jacket \n on the nail."
//   },
//   {
//     "word": "DIP",
//     "meaning": "    She gave the brush a quick dip \n in the paint."
//   }
// ],
// 12: [
//   {
//     "word": "FAIR",
//     "meaning": "The judge made a fair decision in the \n case."
//   },
//   {
//     "word": "AIR",
//     "meaning": "The cool air refreshed them on the hot \n  day."
//   },
//   {
//     "word": "FAR",
//     "meaning": " The mountain range appeared far on \n  the horizon"
//   },
//   {
//     "word": "FIR",
//     "meaning": "The tall fir stood proudly in the \n forest."
//   }
// ],
//     };

//     return Scaffold(
//       body: CommonSpellingWidget(
//         speeling: Column(
//           children: levelWords[levelIndex]!
//               .map((wordData) => Column(
//                     children: [
//                       WordTile(
//                         word: wordData["word"]!,
//                         meaning: wordData["meaning"]!,
//                       ),
//                       // SizedBox(height: 20),
//                     ],
//                   ))
//               .toList(),
//         ),
//         ontap: () {
//           box.write('completedLevel', levelIndex);
//           Get.offAll(() => LevelCompletedViews(levelIndex: levelIndex));
//         },
//       ),
//     );
//   }
// }