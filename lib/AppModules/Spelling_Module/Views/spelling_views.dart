


// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get_storage/get_storage.dart';
// import 'package:word_guess/AppModules/Level_Completed_Module/views/level_completed_view.dart';

// import '../../../Widgets/common_spelling_widget.dart';
// import '../../../Widgets/next_widget.dart';

// class SpellingView extends StatelessWidget {
//   final int levelIndex;
//   const SpellingView({super.key, required this.levelIndex});

//   @override
//   Widget build(BuildContext context) {
//     final box = GetStorage(); // Persistent Storage

//     // Define spelling words for each level
//     final Map<int, List<Map<String, String>>> levelWords = {
//       1: [
//         {"word": "CAT", "meaning": "The cat sat quietly \n on the windowsill."},
//         {"word": "ACT", "meaning": "They decided to act in \n the school play."}
//       ],
//       2: [
//         {"word": "TAP", "meaning": "She gave a gentle tap on \n the door."},
//         {"word": "PAT", "meaning": "He offered a reassuring pat \n on the back."},
//         {"word": "AT", "meaning": "The meeting will be held at \n noon."}
//       ],
//       3: [
//         {"word": "TOP", "meaning": "She reached the top of the \n mountain after hours of hiking."},
//         {"word": "OPT", "meaning": "You can opt for the salad \n or the soup for lunch."},
//         {"word": "TO", "meaning": "He decided to go to the \n store before it closed."}
//       ],
//    4: [
//         {"word": "SALT", "meaning": "She added salt to enhance \n the flavor of the dish."},
//         {"word": "LAST", "meaning": "This will be the last time we \n discuss this topic."},
//         {"word": "ALT", "meaning": "The alt of the mountain was \n impressive and breathtaking."},
//         {"word": "TALS", "meaning": "The children built tall \n towers with their tals."}
//       ],
//       5: [
//         {"word": "ART", "meaning": "She expressed her \n feelings through art."},
//         {"word": "TEAR", "meaning": "He began to tear the paper \n for the project."},
//         {"word": "RATE", "meaning": "The company decided to \n rate the products based on \n quality."},
//         {"word": "EAR", "meaning": "She covered her ear to \n block out the loud noise."}
//       ],
//       6: [
//         {"word": "DRIB", "meaning": "A small drib of paint fell on \n the floor."},
//         {"word": "BIRD", "meaning": "The bird perched on the \n branch, chirping softly."},
//         {"word": "BID", "meaning": "He placed a bid on the \n rare painting at the auction."},
//         {"word": "RIB", "meaning": "She felt a sharp pain near \n her rib after the fall."}
//       ],
     
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
//                       SizedBox(height: 20),
//                     ],
//                   ))
//               .toList(),
//         ),
//         ontap: () {
//           // Save last completed level in GetStorage
//           box.write('completedLevel', levelIndex);

//           // Go to the Level Completed screen
//           Get.offAll(() => LevelCompletedViews(levelIndex: levelIndex));
//         },
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:word_guess/AppModules/Level_Completed_Module/views/level_completed_view.dart';
import 'package:word_guess/Widgets/common_spelling_widget.dart';

import '../../../Widgets/next_widget.dart';

class SpellingView extends StatelessWidget {
  final int levelIndex;
  const SpellingView({super.key, required this.levelIndex});

  @override
  Widget build(BuildContext context) {
    final box = GetStorage(); // Persistent Storage

    // Define spelling words for each level
    final Map<int, List<Map<String, String>>> levelWords = {
      1: [
        {"word": "CAT", "meaning": "The cat sat quietly \n on the windowsill."},
        {"word": "ACT", "meaning": "They decided to act in \n the school play."}
      ],
      2: [
        {"word": "TAP", "meaning": "She gave a gentle tap on \n the door."},
        {"word": "PAT", "meaning": "He offered a reassuring pat \n on the back."},
        {"word": "AT", "meaning": "The meeting will be held at \n noon."}
      ],
      3: [
        {"word": "TOP", "meaning": "She reached the top of the \n mountain after hours of hiking."},
        {"word": "OPT", "meaning": "You can opt for the salad \n or the soup for lunch."},
        {"word": "TO", "meaning": "He decided to go to the \n store before it closed."}
      ],
      4: [
        {"word": "SALT", "meaning": "She added salt to enhance \n the flavor of the dish."},
        {"word": "LAST", "meaning": "This will be the last time we \n discuss this topic."},
        {"word": "ALT", "meaning": "The alt of the mountain was \n impressive and breathtaking."},
        {"word": "TALS", "meaning": "The children built tall \n towers with their tals."}
      ],
      5: [
        {"word": "ART", "meaning": "She expressed her \n feelings through art."},
        {"word": "TEAR", "meaning": "He began to tear the paper \n for the project."},
        {"word": "RATE", "meaning": "The company decided to \n rate the products based on \n quality."},
        {"word": "EAR", "meaning": "She covered her ear to \n block out the loud noise."}
      ],
      6: [
        {"word": "DRIB", "meaning": "A small drib of paint fell on \n the floor."},
        {"word": "BIRD", "meaning": "The bird perched on the \n branch, chirping softly."},
        {"word": "BID", "meaning": "He placed a bid on the \n rare painting at the auction."},
        {"word": "RIB", "meaning": "She felt a sharp pain near \n her rib after the fall."}
      ],
    };

    return Scaffold(
      body: CommonSpellingWidget(
        speeling: Column(
          children: levelWords[levelIndex]!
              .map((wordData) => Column(
                    children: [
                      WordTile(
                        word: wordData["word"]!,
                        meaning: wordData["meaning"]!,
                      ),
                      SizedBox(height: 20),
                    ],
                  ))
              .toList(),
        ),
        ontap: () {
          // Save last completed level in GetStorage
          box.write('completedLevel', levelIndex);

          // Go to the Level Completed screen
          Get.offAll(() => LevelCompletedViews(levelIndex: levelIndex));
        },
      ),
    );
  }
}
