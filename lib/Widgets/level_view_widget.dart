import 'package:flutter/material.dart';
import 'package:word_guess/Widgets/common_white_cotainer.dart';
import '../AppModules/Level_2_Module/Controler/LevelController.dart';
import '../Utils/utils.dart';
import 'setting_wifget.dart';

class LevelScreen extends StatelessWidget {
  final LevelController controller;
  final Widget simole;
  const LevelScreen(this.controller, this.simole, {super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            commonimage(level2Image),
            SettingWidget(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 50),
                simole,
                SizedBox(height: 50),
                commoncontainer(controller),
                SizedBox(height: 30),
              ],
            ),
          ],
        ),
      ),
    );
  }
}