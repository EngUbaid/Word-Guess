import 'package:flutter/material.dart';
import 'package:word_guess/AppModules/Level1Modile/views/level_one_view.dart';

import 'package:word_guess/Widgets/level_completed_Widget.dart';

import '../../Level_2_Module/Views/level2_view.dart';

class LevelCompletedView extends StatelessWidget {
  const LevelCompletedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: LevelCompletedWidget(
      tittle: "Level 1",
      page: Level2View(),
    ));
  }
}
