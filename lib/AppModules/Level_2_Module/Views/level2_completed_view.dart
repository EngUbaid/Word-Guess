import 'package:flutter/material.dart';
import 'package:word_guess/AppModules/SplashModule/Views/splash_view.dart';
import 'package:word_guess/AppModules/level_3_Module/Views/level_3_view.dart';
import '../../../Widgets/level_completed_Widget.dart';


class LevelTwoCompletedView extends StatelessWidget {
  const LevelTwoCompletedView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LevelCompletedWidget(
        tittle: "Level 2",
        page: Level3View(),
      ),
    );
  }
}
