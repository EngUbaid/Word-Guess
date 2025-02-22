import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LevelController extends GetxController {
  RxList<Offset> points = <Offset>[].obs;
  RxList<Offset> connectedPoints = <Offset>[].obs;
  RxSet<String> completedWords = <String>{}.obs;

  final List<String> validWords;
  final Map<String, Offset> letterPositions;
  final Widget nextLevelView;

  LevelController({
    required this.validWords,
    required this.letterPositions,
    required this.nextLevelView,
  });

  void handleDrawnPath() {
    String formedWord = "";
    List<Offset> tempConnectedPoints = [];

    for (var point in points) {
      for (var entry in letterPositions.entries) {
        if ((point - entry.value).distance < 40) {
          if (!formedWord.contains(entry.key)) {
            formedWord += entry.key;
            tempConnectedPoints.add(entry.value);
          }
        }
      }
    }

    connectedPoints.assignAll(tempConnectedPoints);

    if (validWords.contains(formedWord)) {
      completedWords.add(formedWord);
    }

    Future.delayed(Duration(seconds: 1), () {
      connectedPoints.clear();
    });

    print("Completed Words: ${completedWords}");
    print("Required Words: ${validWords.length}");

    if (completedWords.length >= validWords.length) {
      Future.delayed(Duration(seconds: 1), () {
        print("Navigating to Next Level...");
        Get.offAll(() => nextLevelView);
      });
    }
  }
}
