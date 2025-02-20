import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:word_guess/AppModules/SplashModule/Views/splash_view.dart';
import 'package:word_guess/Utils/utils.dart';
import 'package:word_guess/Widgets/word_guess.dart';

class SplashLoading extends StatefulWidget {
  const SplashLoading({super.key});

  @override
  State<SplashLoading> createState() => _SplashLoadingState();
}

class _SplashLoadingState extends State<SplashLoading> {
  double progress = 0.0;
  @override
  void initState() {
    super.initState();
    startLoadingAnimation();
  }

  void startLoadingAnimation() {
    Timer.periodic(Duration(milliseconds: 500), (timer) {
      if (progress < 1.0) {
        setState(() {
          progress += 0.1; 
        });
      } else {
        timer.cancel();
        Future.delayed(Duration(milliseconds: 500), () {
          Get.offAll(() => SplashView(),
              opaque: false, transition: Transition.fade);
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blueColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("assets/Group.png"),
          const SizedBox(
            height: 50,
          ),
          wordguess(),
          const SizedBox(
            height: 80,
          ),
          Text(
            'Loading',
            style:
                GoogleFonts.arapey(fontSize: 19, color: AppColors.whiteColor),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 40),
            decoration: BoxDecoration(
              color: AppColors.borderColor,
              borderRadius: BorderRadius.circular(9),
              border: Border.all(color: AppColors.whiteColor, width: 1),
            ),
            padding: const EdgeInsets.all(2),
            child: LinearProgressIndicator(
              value: progress,
              backgroundColor: AppColors.blueColor,
              color: AppColors.yellowColor,
              minHeight: 16,
              borderRadius: BorderRadius.all(Radius.circular(9)),
            ),
          ),
        ],
      ),
    );
  }
}
