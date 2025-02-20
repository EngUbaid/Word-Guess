import 'package:flutter/material.dart';

class LevelCompletedDailog extends StatelessWidget {
  const LevelCompletedDailog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(17),
        //  border: Border.all(color: AppColors.whiteColor, width: 1),
      ),
      child: Container(
          padding: EdgeInsets.all(20),
          width: 379,
          height: 252,
          child: Image.asset("assets/levelcompleted.png")),
    );
  }
}
