import 'package:flutter/material.dart';
import 'package:word_guess/AppModules/SplashModule/Views/splash_loading.dart';
import '../../../Widgets/level_completed_Widget.dart';


class LevelsixCompletedView extends StatelessWidget {
  const LevelsixCompletedView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LevelCompletedWidget(
        tittle: "Level 6",
        page: SplashLoading(),
      ),
    );
  }
}
