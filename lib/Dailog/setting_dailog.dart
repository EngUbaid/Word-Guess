import 'package:flutter/material.dart';
import 'package:word_guess/Utils/utils.dart';

class SettingsDialog extends StatelessWidget {
  const SettingsDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Container(
        padding: EdgeInsets.all(20),
        width: 280,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "SETTINGS",
              style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w400,
                  color: AppColors.blackColor),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildIconButton(
                    "assets/home.png", "HOME", AppColors.greenColor),
                _buildIconButton(
                    "assets/sound.png", "SOUND", AppColors.yellowColor),
                _buildIconButton(
                    "assets/music.png", "MUSIC", AppColors.greyColor),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildIconButton(String image, String label, Color color) {
    return Column(
      children: [
        Container(
          height: 57,
          width: 57,
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(57)),
          child: Image.asset(image),
        ),
        SizedBox(height: 8),
        Text(
          label,
          style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: AppColors.blackColor),
        ),
      ],
    );
  }
}
