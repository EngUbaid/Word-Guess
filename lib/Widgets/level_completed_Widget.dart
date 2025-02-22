import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:word_guess/Dailog/level_completed_dailog.dart';
import '../../../Utils/utils.dart';
import '../../../Widgets/app_btn.dart';
import '../../../Widgets/setting_wifget.dart';

class LevelCompletedWidget extends StatefulWidget {
  final String tittle;
  final Widget page;
  const LevelCompletedWidget(
      {super.key, required this.tittle, required this.page});

  @override
  State<LevelCompletedWidget> createState() => _LevelCompletedViewState();
}

class _LevelCompletedViewState extends State<LevelCompletedWidget> {
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
        Future.delayed(Duration(milliseconds: 500), () {});
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/third.png'),
            fit: BoxFit.cover,
          ),
        ),

        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20), // Space from top
              SettingWidget(),
              SizedBox(height: 100),
              LevelCompletedDailog(),
              Text(
                "Level Completed",
                style: TextStyle(color: AppColors.whiteColor),
              ),
              SizedBox(height: 10),
              Stack(
                children: [
                  Container(
                    width: 288,
                    height: 23,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(9),
                      border: Border.all(
                          color: AppColors.boederblueColor, width: 1),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(9),
                      child: ShaderMask(
                        shaderCallback: (Rect bounds) {
                          return LinearGradient(
                            colors: [
                              HexColor("#FFA400"),
                              HexColor("#DA024D"),
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ).createShader(bounds);
                        },
                        child: LinearProgressIndicator(
                          value: progress,
                          backgroundColor: Colors.transparent,
                          valueColor:
                              AlwaysStoppedAnimation<Color>(Colors.white),
                          minHeight: 23,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                      right: 0,
                      top: 0,
                      child: Image.asset(
                        "assets/gift.png",
                        height: 37,
                        width: 37,
                        fit: BoxFit.cover,
                      )),
                ],
              ),
              SizedBox(height: 20),
              AppBtn(
                  tittle: Text(widget.tittle,
                      style: TextStyle(
                          color: AppColors.blackColor,
                          fontSize: 31,
                          fontWeight: FontWeight.w400)),
                  height: 47,
                  width: 188,
                  gradientcolor1: HexColor("#FFD33E"),
                  gradientcolor2: HexColor("#FEE46D"),
                  colors: AppColors.greenColor,
                  bordercolor: Colors.transparent,
                  ontap: () {
                    Get.offAll(
                      widget.page,
                    );
                  }),
              SizedBox(height: 60),
            ],
          ),
        ),
        // ],
      ),
    );
  }
}
