// // import 'package:flutter/material.dart';
// // import 'package:get/get.dart';

// // import '../../../Utils/utils.dart';
// // import '../../../Widgets/setting_wifget.dart';
// // import 'spelling_view._level3.dart';

// // class Level3Controller extends GetxController {
// //   RxList<Offset> points = <Offset>[].obs;
// //   RxList<Offset> connectedPoints = <Offset>[].obs;
// //   RxSet<String> completedWords = <String>{}.obs;
// //   final List<String> validWords = ["TOP", "TO", "OPT"];

// //   final Map<String, Offset> letterPositions = {
// //     "T": Offset(100, 30),
// //     "O": Offset(50, 140),
// //     "P": Offset(160, 140),
// //   };

// //   void handleDrawnPath() {
// //     String formedWord = "";
// //     List<Offset> tempConnectedPoints = [];

// //     for (var point in points) {
// //       for (var entry in letterPositions.entries) {
// //         if ((point - entry.value).distance < 40) {
// //           if (!formedWord.contains(entry.key)) {
// //             formedWord += entry.key;
// //             tempConnectedPoints.add(entry.value);
// //           }
// //         }
// //       }
// //     }

// //     connectedPoints.assignAll(tempConnectedPoints);

// //     if (validWords.contains(formedWord)) {
// //       completedWords.add(formedWord);
// //     }

// //     Future.delayed(Duration(seconds: 1), () {
// //       connectedPoints.clear();
// //     });

// //     if (completedWords.length == validWords.length) {
// //       Future.delayed(Duration(seconds: 1), () {
// //         Get.to(() => SpellingViewLevel3());
// //       });

// //     }
// //   }
// // }

// // class Level3View extends StatelessWidget {
// //   const Level3View({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     final Level3Controller controller = Get.put(Level3Controller());
// //     return SafeArea(
// //       child: Scaffold(
// //         body: Stack(
// //           children: [
// //             commonimage(level2Image),
// //             SettingWidget(),
// //             Column(
// //               mainAxisAlignment: MainAxisAlignment.center,
// //               crossAxisAlignment: CrossAxisAlignment.center,
// //               children: [
//                 // Obx(
//                 //   () => Container(
//                 //     height: 200,
//                 //     width: 180,
//                 //     decoration: BoxDecoration(),
//                 //     child: Column(
//                 //       mainAxisSize: MainAxisSize.min,
//                 //       crossAxisAlignment: CrossAxisAlignment.start,
//                 //       children: [
//                 //         // First row (T)
//                 //         _buildLetterContainer(
//                 //             controller.completedWords.contains("TOP")
//                 //                 ? "T"
//                 //                 : ""),

//                 //         Row(
//                 //           mainAxisAlignment: MainAxisAlignment.center,
//                 //           children: [
//                 //             _buildLetterContainer((controller.completedWords
//                 //                         .contains("TOP") ||
//                 //                     controller.completedWords.contains("OPT"))
//                 //                 ? "O"
//                 //                 : ""),

//                 //             _buildLetterContainer(
//                 //                 controller.completedWords.contains("OPT")
//                 //                     ? "P"
//                 //                     : ""),
//                 //                       _buildLetterContainer((controller.completedWords
//                 //                         .contains("TOP") ||
//                 //                     controller.completedWords.contains("TO"))
//                 //                 ? "T"
//                 //                 : ""),
//                 //             // _buildLetterContainer(
//                 //             //     controller.completedWords.contains("TO")
//                 //             //         ? "T"
//                 //             //         : ""),

//                 //           ],
//                 //         ),

//                 //         Row(
//                 //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 //           children: [
//                 //             _buildLetterContainer(
//                 //                 controller.completedWords.contains("TOP")
//                 //                     ? "P"
//                 //                     : ""),
//                 //                       _buildLetterContainer((controller.completedWords
//                 //                         .contains("TOP") ||
//                 //                     controller.completedWords.contains("TO"))
//                 //                 ? "O"
//                 //                 : ""),
//                 //             // _buildLetterContainer(
//                 //             //     controller.completedWords.contains("TO")
//                 //             //         ? "O"
//                 //             //         : ""),
//                 //           ],
//                 //         ),
//                 //       ],
//                 //     ),
//                 //   ),
//                 // ),
// //                 SizedBox(height: 50),
// //                 Center(
// //                   child: GestureDetector(
// //                     onPanUpdate: (details) {
// //                       controller.points.add(details.localPosition);
// //                       controller.handleDrawnPath();
// //                     },
// //                     onPanEnd: (details) {
// //                       controller.points.clear();
// //                     },
// //                     child: Container(
// //                       width: 200,
// //                       height: 200,
// //                       decoration: BoxDecoration(
// //                         shape: BoxShape.circle,
// //                         color: Colors.white,
// //                         border: Border.all(color: Colors.blue, width: 4),
// //                       ),
// //                       child: Stack(
// //                         alignment: Alignment.center,
// //                         children: [
// //                           CustomPaint(
// //                             size: Size(200, 200),
// //                             painter: LinePainter(controller.connectedPoints),
// //                           ),
// //                           ...controller.letterPositions.entries.map((entry) {
// //                             return Obx(
// //                               () {
// //                                 bool isConnected = controller.connectedPoints
// //                                     .contains(entry.value);
// //                                 return Positioned(
// //                                   left: entry.value.dx - 25,
// //                                   top: entry.value.dy - 25,
// //                                   child: Container(
// //                                     width: 45,
// //                                     height: 45,
// //                                     alignment: Alignment.center,
// //                                     decoration: BoxDecoration(
// //                                       shape: BoxShape.circle,
// //                                       color: isConnected
// //                                           ? Colors.pink
// //                                           : Colors.white,
// //                                     ),
// //                                     child: Text(
// //                                       entry.key,
// //                                       style: TextStyle(
// //                                         fontSize: 35,
// //                                         color: isConnected
// //                                             ? Colors.white
// //                                             : Colors.black,
// //                                         fontWeight: FontWeight.bold,
// //                                       ),
// //                                     ),
// //                                   ),
// //                                 );
// //                               },
// //                             );
// //                           }).toList(),
// //                           Icon(Icons.shuffle, size: 40),
// //                         ],
// //                       ),
// //                     ),
// //                   ),
// //                 ),
// //                 SizedBox(height: 30),
// //               ],
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }

// //   Widget _buildLetterContainer(String letter) {
// //     return Container(
// //       width: 50,
// //       height: 50,
// //       margin: EdgeInsets.all(5),
// //       alignment: Alignment.center,
// //       decoration: BoxDecoration(
// //         borderRadius: BorderRadius.circular(50),
// //         color: AppColors.buttonColor,
// //       ),
// //       child: Text(
// //         letter,
// //         style: TextStyle(
// //           fontSize: 30,
// //           fontWeight: FontWeight.bold,
// //           color: Colors.white,
// //         ),
// //       ),
// //     );
// //   }
// // }

// // class LinePainter extends CustomPainter {
// //   final List<Offset> connectedPoints;

// //   LinePainter(this.connectedPoints);

// //   @override
// //   void paint(Canvas canvas, Size size) {
// //     final paint = Paint()
// //       ..color = Colors.blue
// //       ..strokeWidth = 5.0
// //       ..strokeCap = StrokeCap.round;

// //     for (int i = 0; i < connectedPoints.length - 1; i++) {
// //       canvas.drawLine(connectedPoints[i], connectedPoints[i + 1], paint);
// //     }
// //   }

// //   @override
// //   bool shouldRepaint(CustomPainter oldDelegate) => true;
// // }
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:word_guess/Utils/utils.dart';
import '../../../Widgets/letter_container.dart';
import '../../../Widgets/level_view_widget.dart';
import '../../Controler/LevelControler.dart';
import '../../Spelling_Module/Views/spelling_views.dart';

class Level3View extends StatelessWidget {
  const Level3View({super.key});

  @override
  Widget build(BuildContext context) {
    final LevelController controller = Get.put(
      LevelController(
          validWords: [
            "TOP",
            "TO",
            "OPT"
          ],
          letterPositions: {
            "T": Offset(100, 33),
            "O": Offset(60, 135),
            "P": Offset(145, 135),
          },

          //  nextLevelView: SpellingViewLevel3(), // Move to Level 3 after completion
          nextLevelView: SpellingView(levelIndex: 3)),
      tag: 'level3',
    );

    return LevelScreen(
      controller,
      Obx(
        () => Container(
          height: 200,
          width: 180,
          decoration: BoxDecoration(),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // First row (T)
              letterContainer(
                  controller.completedWords.contains("TOP") ? "T" : "",
                  AppColors.yellowColor),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  letterContainer(
                      (controller.completedWords.contains("TOP") ||
                              controller.completedWords.contains("OPT"))
                          ? "O"
                          : "",
                      AppColors.yellowColor),

                  letterContainer(
                      controller.completedWords.contains("OPT") ? "P" : "",
                      AppColors.yellowColor),
                  letterContainer(
                      (controller.completedWords.contains("TOP") ||
                              controller.completedWords.contains("TO"))
                          ? "T"
                          : "",
                      AppColors.yellowColor),
                  // _buildLetterContainer(
                  //     controller.completedWords.contains("TO")
                  //         ? "T"
                  //         : ""),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  letterContainer(
                      controller.completedWords.contains("TOP") ? "P" : "",
                      AppColors.yellowColor),
                  letterContainer(
                      (controller.completedWords.contains("TOP") ||
                              controller.completedWords.contains("TO"))
                          ? "O"
                          : "",
                      AppColors.yellowColor),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
