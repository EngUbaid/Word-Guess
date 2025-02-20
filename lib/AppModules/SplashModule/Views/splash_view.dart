import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:word_guess/AppModules/Level1Modile/views/level_one_view.dart';
import 'package:word_guess/AppModules/settingModule/views/setting_view.dart';
import 'package:word_guess/Utils/utils.dart';
import 'package:word_guess/Widgets/app_btn.dart';
import 'package:word_guess/Widgets/setting_wifget.dart';
import 'package:word_guess/Widgets/word_guess.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   
      body: Stack(
        children: [
          Image.asset(
            "assets/splash-backround.png",
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          SettingWidget(),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                wordguess(),
                const SizedBox(
                  height: 20,
                ),
                AppBtn(
                  tittle: Text(
                    "LEVEL 1",
                    style: GoogleFonts.abel(
                        fontSize: 19, color: AppColors.whiteColor),
                  ),
                  height: 40,
                  width: 217,
                  colors: AppColors.buttonColor,
                  bordercolor: Colors.transparent,
                  ontap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => LevelOneView()),
                    );
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
