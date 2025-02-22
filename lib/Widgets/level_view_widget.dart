import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:word_guess/Widgets/common_white_cotainer.dart';
import '../AppModules/Controler/LevelControler.dart';
import '../Utils/utils.dart';
import 'setting_wifget.dart';

class LevelScreen extends StatelessWidget {
  final LevelController controller;
  final Widget simole;
  const LevelScreen(this.controller, this.simole, {super.key});

  @override
  Widget build(BuildContext context) {
    final height = Get.height;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(level1Image),
            fit: BoxFit.cover,
          ),
        ),

        child: Column(
          children: [
            SettingWidget(),
            SizedBox(height: height / 19),
            simole,
            SizedBox(height: height / 12),
            commoncontainer(controller),
          ],
        ),
        // ],
      ),
    );
  }
}
