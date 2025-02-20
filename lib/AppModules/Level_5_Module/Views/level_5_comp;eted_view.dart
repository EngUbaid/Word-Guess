import 'package:flutter/material.dart';
import 'package:word_guess/AppModules/Level_5_Module/Views/level_5_view.dart';
import 'package:word_guess/AppModules/SplashModule/Views/splash_view.dart';
import '../../../Widgets/level_completed_Widget.dart';
import '../../level_6_Module/Views/level_6_view.dart';


class LevelfiveCompletedView extends StatelessWidget {
  const LevelfiveCompletedView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LevelCompletedWidget(
        tittle: "Level 5",
        page: Level6View(),
      ),
    );
  }
}
