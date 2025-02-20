// // // // import 'package:flutter/material.dart';

// // // // import 'main.dart';

// // // // class Raw extends StatelessWidget {
// // // //   const Raw({super.key});

// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     return Scaffold(
// // // //       body: Stack(
// // // //         alignment: Alignment.center,
// // // //         children: [
// // // // Column(
// // // //   // mainAxisAlignment: MainAxisAlignment.center,
// // // //   // crossAxisAlignment: CrossAxisAlignment.center,
// // // //   children: [
// // // //     Row(
// // // //       mainAxisAlignment: MainAxisAlignment.center,
// // // //       children: [
// // // //         Container(
// // // //           width: 50,
// // // //           height: 50,
// // // //           margin: EdgeInsets.all(5),
// // // //           alignment: Alignment.center,
// // // //           decoration: BoxDecoration(
// // // //             borderRadius: BorderRadius.circular(50),
// // // //             color: Colors.redAccent,
// // // //           ),
// // // //           child: Text(
// // // //             "A",
// // // //             style: TextStyle(
// // // //               fontSize: 30,
// // // //               fontWeight: FontWeight.bold,
// // // //               color: Colors.white,
// // // //             ),
// // // //           ),
// // // //         ),

// // // //         Container(
// // // //           width: 50,
// // // //           height: 50,
// // // //           margin: EdgeInsets.all(5),
// // // //           alignment: Alignment.center,
// // // //           decoration: BoxDecoration(
// // // //             borderRadius: BorderRadius.circular(50),
// // // //             color: Colors.redAccent,
// // // //           ),
// // // //           child: Text(
// // // //             "C",
// // // //             style: TextStyle(
// // // //               fontSize: 30,
// // // //               fontWeight: FontWeight.bold,
// // // //               color: Colors.white,
// // // //             ),
// // // //           ),
// // // //         ),

// // // //         Container(
// // // //           width: 50,
// // // //           height: 50,
// // // //           margin: EdgeInsets.all(5),
// // // //           alignment: Alignment.center,
// // // //           decoration: BoxDecoration(
// // // //             borderRadius: BorderRadius.circular(50),
// // // //             color: Colors.redAccent,
// // // //           ),
// // // //           child: Text(
// // // //             "T",
// // // //             style: TextStyle(
// // // //               fontSize: 30,
// // // //               fontWeight: FontWeight.bold,
// // // //               color: Colors.white,
// // // //             ),
// // // //           ),
// // // //         ),

// // // //       ],
// // // //     ),
// // // //   ],
// // // // ),
// // // //           Center(
// // // //             child: Container(
// // // //               width: 200,
// // // //               height: 200,
// // // //               decoration: BoxDecoration(
// // // //                 shape: BoxShape.circle,
// // // //                 color: Colors.white,
// // // //                 border: Border.all(color: Colors.blue, width: 4),
// // // //               ),
// // // //               child: CustomPaint(
// // // //                 //  painter: LinePainter(),
// // // //                 child: Stack(
// // // //                   alignment: Alignment.center,
// // // //                   children: [
// // // //                     _positionLetter("A", Offset(100, 30)),
// // // //                     _positionLetter("C", Offset(50, 140)),
// // // //                     _positionLetter("T", Offset(160, 140)),
// // // //                     Icon(Icons.shuffle, color: Colors.grey[400], size: 40),
// // // //                   ],
// // // //                 ),
// // // //               ),
// // // //             ),
// // // //           ),
// // // //         ],
// // // //       ),
// // // //     );
// // // //   }

// // // //   Widget _positionLetter(String letter, Offset position) {
// // // //     return Positioned(
// // // //       left: position.dx - 20,
// // // //       top: position.dy - 30,
// // // //       child: Text(
// // // //         letter,
// // // //         style: TextStyle(
// // // //             fontSize: 40, color: Colors.black, fontWeight: FontWeight.bold),
// // // //       ),
// // // //     );
// // // //   }
// // // // }
// // // import 'package:flutter/material.dart';

// // // class Raw extends StatelessWidget {
// // //   const Raw({super.key});

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       body: Stack(
// // //         children: [
// // //           Center(
// // //             child: Column(
// // //               mainAxisSize: MainAxisSize.min, // Keeps content compact
// // //               children: [
// // //                 // First Row: A - C - T
// // //                 Row(
// // //                   mainAxisAlignment: MainAxisAlignment.center,
// // //                   children: [
// // //                     _buildLetterContainer("A"), // Left of "C"
// // //                     _buildLetterContainer("C"), // Center
// // //                     _buildLetterContainer("T"), // Right of "C"
// // //                   ],
// // //                 ),
// // //                 // Second Row: A (Below C)
// // //                 _buildLetterContainer("A"),
// // //                 // Third Row: T (Below C)
// // //                 _buildLetterContainer("T"),
// // //                 Center(
// // //                   child: Container(
// // //                     width: 200,
// // //                     height: 200,
// // //                     decoration: BoxDecoration(
// // //                       shape: BoxShape.circle,
// // //                       color: Colors.white,
// // //                       border: Border.all(color: Colors.blue, width: 4),
// // //                     ),
// // //                     child: CustomPaint(
// // //                         painter: LinePainter(),
// // //                       child: Stack(
// // //                         alignment: Alignment.center,
// // //                         children: [
// // //                           _positionLetter("A", Offset(100, 30)),
// // //                           _positionLetter("C", Offset(50, 140)),
// // //                           _positionLetter("T", Offset(160, 140)),
// // //                           Icon(Icons.shuffle,
// // //                               color: Colors.grey[400], size: 40),
// // //                         ],
// // //                       ),
// // //                     ),
// // //                   ),
// // //                 ),
// // //               ],
// // //             ),
// // //           ),
// // //         ],
// // //       ),
// // //     );
// // //   }

// // //   Widget _buildLetterContainer(String letter) {
// // //     return Container(
// // //       width: 50,
// // //       height: 50,
// // //       margin: EdgeInsets.all(5),
// // //       alignment: Alignment.center,
// // //       decoration: BoxDecoration(
// // //         borderRadius: BorderRadius.circular(50),
// // //         color: Colors.redAccent,
// // //       ),
// // //       child: Text(
// // //         letter,
// // //         style: TextStyle(
// // //           fontSize: 30,
// // //           fontWeight: FontWeight.bold,
// // //           color: Colors.white,
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }

// // // Widget _positionLetter(String letter, Offset position) {
// // //   return Positioned(
// // //     left: position.dx - 20,
// // //     top: position.dy - 30,
// // //     child: Text(
// // //       letter,
// // //       style: TextStyle(
// // //           fontSize: 40, color: Colors.black, fontWeight: FontWeight.bold),
// // //     ),
// // //   );
// // // }

// // // import 'package:flutter/material.dart';
// // // import 'package:get/get.dart';
// // // import 'package:word_guess/Utils/utils.dart';
// // // import 'package:word_guess/Widgets/setting_wifget.dart';

// // // class WordDrawingGame extends StatefulWidget {
// // //   const WordDrawingGame({super.key});

// // //   @override
// // //   _WordDrawingGameState createState() => _WordDrawingGameState();
// // // }

// // // class _WordDrawingGameState extends State<WordDrawingGame> {
// // //   List<Offset> points = []; // Tracks user-drawn points
// // //   List<Offset> connectedPoints = []; // Stores lines between letters
// // //   Set<String> completedWords = {}; // Stores completed words
// // //   final List<String> validWords = ["ACT", "CAT"];

// // //   final Map<String, Offset> letterPositions = {
// // //     "A": Offset(100, 30),
// // //     "C": Offset(50, 140),
// // //     "T": Offset(160, 140),
// // //   };

// // //   void _handleDrawnPath() {
// // //     String formedWord = "";
// // //     List<Offset> tempConnectedPoints = [];

// // //     for (var point in points) {
// // //       for (var entry in letterPositions.entries) {
// // //         if ((point - entry.value).distance < 40) {
// // //           if (!formedWord.contains(entry.key)) {
// // //             formedWord += entry.key;
// // //             tempConnectedPoints.add(entry.value);
// // //           }
// // //         }
// // //       }
// // //     }

// // //     setState(() {
// // //       connectedPoints = tempConnectedPoints; // Show the drawn line immediately
// // //     });

// // //     if (validWords.contains(formedWord)) {
// // //       setState(() {
// // //         completedWords.add(formedWord);
// // //       });
// // //     }

// // //     // ✅ Clear the line after 1 second (both valid & invalid)
// // //     Future.delayed(Duration(seconds: 1), () {
// // //       setState(() {
// // //         connectedPoints.clear();
// // //       });
// // //     });
// // //   }

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       body: Stack(
// // //         children: [
// // //           Image.asset(
// // //             "assets/levelone.png",
// // //             height: Get.height,
// // //             width: Get.width,
// // //             fit: BoxFit.cover,
// // //           ),
// // //           SettingWidget(),
// // //           Column(
// // //             mainAxisAlignment: MainAxisAlignment.center,
// // //             crossAxisAlignment: CrossAxisAlignment.center,
// // //             children: [
// // //               Column(
// // //                 mainAxisSize: MainAxisSize.min,
// // //                 children: [
// // //                   Row(
// // //                     mainAxisAlignment: MainAxisAlignment.center,
// // //                     children: [
// // //                       _buildLetterContainer(
// // //                           completedWords.contains("ACT") ? "A" : ""),
// // //                       _buildLetterContainer(
// // //                           completedWords.isNotEmpty ? "C" : ""),
// // //                       _buildLetterContainer(
// // //                           completedWords.contains("ACT") ? "T" : ""),
// // //                     ],
// // //                   ),
// // //                   _buildLetterContainer(
// // //                       completedWords.contains("CAT") ? "A" : ""),
// // //                   _buildLetterContainer(
// // //                       completedWords.contains("CAT") ? "T" : ""),
// // //                 ],
// // //               ),
// // //               SizedBox(height: 150),
// // //               Center(
// // //                 child: GestureDetector(
// // //                     onPanUpdate: (details) {
// // //                       setState(() {
// // //                         points.add(details.localPosition);
// // //                       });
// // //                       _handleDrawnPath();
// // //                     },
// // //                     onPanEnd: (details) {
// // //                       points.clear();
// // //                     },
// // //                     child: Container(
// // //                       width: 200,
// // //                       height: 200,
// // //                       decoration: BoxDecoration(
// // //                         shape: BoxShape.circle,
// // //                         color: Colors.white,
// // //                         border: Border.all(color: Colors.blue, width: 4),
// // //                       ),
// // //                       child: Stack(
// // //                         alignment: Alignment.center,
// // //                         children: [
// // //                           CustomPaint(
// // //                             size: Size(200, 200),
// // //                             painter: LinePainter(
// // //                                 connectedPoints), // ✅ Draw lines instantly
// // //                           ),
// // //                           ...letterPositions.entries.map((entry) {
// // //                             bool isConnected =
// // //                                 connectedPoints.contains(entry.value);
// // //                             return Positioned(
// // //                               left: entry.value.dx - 25,
// // //                               top: entry.value.dy - 25,
// // //                               child: Container(
// // //                                 width: 45,
// // //                                 height: 45,
// // //                                 alignment: Alignment.center,
// // //                                 decoration: BoxDecoration(
// // //                                   shape: BoxShape.circle,
// // //                                   color:
// // //                                       isConnected ? Colors.pink : Colors.white,

// // //                                 ),
// // //                                 child: Text(
// // //                                   entry.key,
// // //                                   style: TextStyle(
// // //                                     fontSize: 35,
// // //                                     color: isConnected
// // //                                         ? Colors.white
// // //                                         : Colors.black,
// // //                                     fontWeight: FontWeight.bold,
// // //                                   ),
// // //                                 ),
// // //                               ),
// // //                             );
// // //                           }).toList(),
// // //                           Icon(Icons.shuffle, size: 40),
// // //                         ],
// // //                       ),
// // //                     )),
// // //               ),
// // //               SizedBox(height: 30),
// // //             ],
// // //           ),
// // //         ],
// // //       ),
// // //     );
// // //   }

// // //   Widget _buildLetterContainer(String letter) {
// // //     return Container(
// // //       width: 50,
// // //       height: 50,
// // //       margin: EdgeInsets.all(5),
// // //       alignment: Alignment.center,
// // //       decoration: BoxDecoration(
// // //         borderRadius: BorderRadius.circular(50),
// // //         color: AppColors.buttonColor,
// // //       ),
// // //       child: Text(
// // //         letter,
// // //         style: TextStyle(
// // //           fontSize: 30,
// // //           fontWeight: FontWeight.bold,
// // //           color: Colors.white,
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }

// // // class LinePainter extends CustomPainter {
// // //   final List<Offset> connectedPoints;

// // //   LinePainter(this.connectedPoints);

// // //   @override
// // //   void paint(Canvas canvas, Size size) {
// // //     final paint = Paint()
// // //       ..color = Colors.blue
// // //       ..strokeWidth = 5.0
// // //       ..strokeCap = StrokeCap.round;

// // //     for (int i = 0; i < connectedPoints.length - 1; i++) {
// // //       canvas.drawLine(connectedPoints[i], connectedPoints[i + 1], paint);
// // //     }
// // //   }

// // //   @override
// // //   bool shouldRepaint(CustomPainter oldDelegate) => true;
// // // }

// // import 'package:flutter/material.dart';
// // import 'package:get/get.dart';
// // import 'package:word_guess/Utils/utils.dart';
// // import 'package:word_guess/Widgets/setting_wifget.dart';

// // class WordDrawingController extends GetxController {
// //   RxList<Offset> points = <Offset>[].obs;
// //   RxList<Offset> connectedPoints = <Offset>[].obs;
// //   RxSet<String> completedWords = <String>{}.obs;
// //   final List<String> validWords = ["ACT", "CAT"];

// //   final Map<String, Offset> letterPositions = {
// //     "A": Offset(100, 30),
// //     "C": Offset(50, 140),
// //     "T": Offset(160, 140),
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
// //   }
// // }

// // class WordDrawingGame extends StatelessWidget {
// //   final WordDrawingController controller = Get.put(WordDrawingController());

// //   @override
// //   Widget build(BuildContext context) {
// //     return SafeArea(
// //       child: Scaffold(
// //         body: Stack(
// //           children: [
// //             Image.asset(
// //               "assets/levelone.png",
// //               height: Get.height,
// //               width: Get.width,
// //               fit: BoxFit.cover,
// //             ),
// //             SettingWidget(),
// //             Column(
// //               mainAxisAlignment: MainAxisAlignment.center,
// //               crossAxisAlignment: CrossAxisAlignment.center,
// //               children: [
// //                 Obx(
// //                   () => Column(
// //                     mainAxisSize: MainAxisSize.min,
// //                     children: [
// //                       Row(
// //                         mainAxisAlignment: MainAxisAlignment.center,
// //                         children: [
// //                           _buildLetterContainer(
// //                               controller.completedWords.contains("ACT")
// //                                   ? "A"
// //                                   : ""),
// //                           _buildLetterContainer(
// //                               controller.completedWords.isNotEmpty ? "C" : ""),
// //                           _buildLetterContainer(
// //                               controller.completedWords.contains("ACT")
// //                                   ? "T"
// //                                   : ""),
// //                         ],
// //                       ),
// //                       _buildLetterContainer(
// //                           controller.completedWords.contains("CAT") ? "A" : ""),
// //                       _buildLetterContainer(
// //                           controller.completedWords.contains("CAT") ? "T" : ""),
// //                     ],
// //                   ),
// //                 ),
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

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class WordDrawingGame extends StatelessWidget {
//   final String backgroundImage;
//   final List<String> validWords;
//   final Map<String, Offset> letterPositions;
//   final List<List<String>> expectedLayout;

//   WordDrawingGame({
//     required this.backgroundImage,
//     required this.validWords,
//     required this.letterPositions,
//     required this.expectedLayout,
//   });

//   @override
//   Widget build(BuildContext context) {
//     final controller =
//         Get.put(WordDrawingController(validWords, letterPositions));

//     return SafeArea(
//       child: Scaffold(
//         body: Stack(
//           children: [
//             Image.asset(
//               backgroundImage,
//               height: Get.height,
//               width: Get.width,
//               fit: BoxFit.cover,
//             ),
//             Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 //  Obx(() =>
//                 LetterGrid(
//                   completedWords: controller.completedWords,
//                   expectedLayout: expectedLayout,
//                 ),
//                 // ),
//                 SizedBox(height: 50),
//                 DrawingPad(controller: controller),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class WordDrawingController extends GetxController {
//   RxList<Offset> points = <Offset>[].obs;
//   RxList<Offset> connectedPoints = <Offset>[].obs;
//   RxSet<String> completedWords = <String>{}.obs;
//   final List<String> validWords;
//   final Map<String, Offset> letterPositions;

//   WordDrawingController(this.validWords, this.letterPositions);

//   void handleDrawnPath() {
//     String formedWord = "";
//     List<Offset> tempConnectedPoints = [];

//     for (var point in points) {
//       for (var entry in letterPositions.entries) {
//         if ((point - entry.value).distance < 40) {
//           if (!formedWord.contains(entry.key)) {
//             formedWord += entry.key;
//             tempConnectedPoints.add(entry.value);
//           }
//         }
//       }
//     }

//     connectedPoints.assignAll(tempConnectedPoints);

//     if (validWords.contains(formedWord)) {
//       completedWords.add(formedWord);
//     }

//     Future.delayed(Duration(seconds: 1), () {
//       connectedPoints.clear();
//     });
//   }
// }

// class LetterGrid extends StatelessWidget {
//   final RxSet<String> completedWords;
//   final List<List<String>> expectedLayout;

//   LetterGrid({required this.completedWords, required this.expectedLayout});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisSize: MainAxisSize.min,
//       children: expectedLayout.map((row) {
//         return Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: row.map((letter) {
//             return _buildLetterContainer(
//                 completedWords.contains(letter) ? letter : "");
//           }).toList(),
//         );
//       }).toList(),
//     );
//   }

//   Widget _buildLetterContainer(String letter) {
//     return Container(
//       width: 50,
//       height: 50,
//       margin: EdgeInsets.all(5),
//       alignment: Alignment.center,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(50),
//         color: letter.isNotEmpty ? Colors.pink : Colors.grey[300],
//       ),
//       child: Text(
//         letter,
//         style: TextStyle(
//           fontSize: 30,
//           fontWeight: FontWeight.bold,
//           color: Colors.white,
//         ),
//       ),
//     );
//   }
// }

// class DrawingPad extends StatelessWidget {
//   final WordDrawingController controller;
//   final Function onPanUpdate;
//   final Function onPanEnd;

//   const DrawingPad({
//     required this.controller,
//     required this.onPanUpdate,
//     required this.onPanEnd,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: GestureDetector(
//         onPanUpdate: (detail) => onPanUpdate,
//         onPanEnd: (detail) => onPanEnd,
//         child: Container(
//           width: 200,
//           height: 200,
//           decoration: BoxDecoration(
//             shape: BoxShape.circle,
//             color: Colors.white,
//             border: Border.all(color: Colors.blue, width: 4),
//           ),
//           child: Stack(
//             alignment: Alignment.center,
//             children: [
//               CustomPaint(
//                 size: Size(200, 200),
//                 painter: LinePainter(controller.connectedPoints),
//               ),
//               ...controller.letterPositions.entries.map((entry) {
//                 return Obx(
//                   () {
//                     bool isConnected =
//                         controller.connectedPoints.contains(entry.value);
//                     return Positioned(
//                       left: entry.value.dx - 25,
//                       top: entry.value.dy - 25,
//                       child: Container(
//                         width: 45,
//                         height: 45,
//                         alignment: Alignment.center,
//                         decoration: BoxDecoration(
//                           shape: BoxShape.circle,
//                           color: isConnected ? Colors.pink : Colors.white,
//                         ),
//                         child: Text(
//                           entry.key,
//                           style: TextStyle(
//                             fontSize: 35,
//                             color: isConnected ? Colors.white : Colors.black,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),
//                     );
//                   },
//                 );
//               }).toList(),
//               Icon(Icons.shuffle, size: 40),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class LinePainter extends CustomPainter {
//   final List<Offset> connectedPoints;

//   LinePainter(this.connectedPoints);

//   @override
//   void paint(Canvas canvas, Size size) {
//     final paint = Paint()
//       ..color = Colors.blue
//       ..strokeWidth = 5.0
//       ..strokeCap = StrokeCap.round;

//     for (int i = 0; i < connectedPoints.length - 1; i++) {
//       canvas.drawLine(connectedPoints[i], connectedPoints[i + 1], paint);
//     }
//   }

//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) => true;
// }

// class Level1 extends StatelessWidget {
//   const Level1({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return WordDrawingGame(
//       backgroundImage: "assets/level1.png",
//       validWords: ["TAP", "AT", "PAT"],
//       letterPositions: {
//         "A": Offset(100, 30),
//         "P": Offset(50, 140),
//         "T": Offset(160, 140),
//       },
//       expectedLayout: [
//         ["T", "A", "P"], // First row
//         ["T", "A"], // Second row
//         ["T"], // Third row
//       ],
//     );
//   }
// }
