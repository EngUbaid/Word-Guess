import 'package:flutter/material.dart';
import 'package:word_guess/AppModules/SplashModule/Views/splash_view.dart';
import 'package:word_guess/AppModules/level_4_Module/Views/level_4_view.dart';
import '../../../Widgets/level_completed_Widget.dart';
import '../../Level_5_Module/Views/level_5_view.dart';


class LevelfourCompletedView extends StatelessWidget {
  const LevelfourCompletedView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LevelCompletedWidget(
        tittle: "Level 4",
        page: Level5View(),
      ),
    );
  }
}
