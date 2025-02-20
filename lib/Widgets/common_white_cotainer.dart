import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:word_guess/Utils/utils.dart';
import '../AppModules/Level_2_Module/Controler/LevelController.dart';
import 'draw_liner.dart';

commoncontainer(LevelController controller) {
  return Center(
    child: GestureDetector(
      onPanUpdate: (details) {
        controller.points.add(details.localPosition);
        controller.handleDrawnPath();
      },
      onPanEnd: (details) {
        controller.points.clear();
      },
      child: Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          border: Border.all(color: Colors.blue, width: 8),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            CustomPaint(
              size: Size(200, 200),
              painter: DrawLiner(controller.connectedPoints),
            ),
            ...controller.letterPositions.entries.map((entry) {
              return Obx(
                () {
                  bool isConnected =
                      controller.connectedPoints.contains(entry.value);
                  return Positioned(
                    left: entry.value.dx - 35,
                    top: entry.value.dy - 34,
                    child: Container(
                      width: 60,
                      height: 60,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: isConnected ? Colors.pink : Colors.white,
                      ),
                      child: Center(
                        child: Text(
                          entry.key,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 50,
                            color: isConnected ? Colors.white : Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              );
            }).toList(),
            Image.asset(
              shafuleImage,
              height: 35,
              width: 35,
              fit: BoxFit.cover,
            )
            // Icon(Icons.shuffle, size: 40),
          ],
        ),
      ),
    ),
  );
}
