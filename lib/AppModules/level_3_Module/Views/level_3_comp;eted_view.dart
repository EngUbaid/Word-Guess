import 'package:flutter/material.dart';
import 'package:word_guess/AppModules/level_3_Module/Views/level_3_view.dart';
import '../../../Widgets/level_completed_Widget.dart';
import '../../level_4_Module/Views/level_4_view.dart';


class LevelthreeCompletedView extends StatelessWidget {
  const LevelthreeCompletedView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LevelCompletedWidget(
        tittle: "Level 3",
        page: Level4View(),
      ),
    );
  }
}
