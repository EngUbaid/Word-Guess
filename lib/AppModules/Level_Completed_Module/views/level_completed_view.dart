// import 'dart:async';

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:hexcolor/hexcolor.dart';
// import 'package:word_guess/AppModules/Level1Modile/views/level_one_view.dart';
// import 'package:word_guess/AppModules/Level_2_Module/Views/level2_view.dart';
// import 'package:word_guess/AppModules/SplashModule/Views/splash_view.dart';
// import 'package:word_guess/Widgets/level_completed_Widget.dart';

// import '../../../Dailog/level_completed_dailog.dart';
// import '../../../Utils/utils.dart';
// import '../../../Widgets/app_btn.dart';
// import '../../../Widgets/setting_wifget.dart';
// import '../../level_3_Module/Views/level_3_view.dart';

// class LevelCompletedView extends StatelessWidget {
//   final int levelIndex;
//   const LevelCompletedView({super.key, required this.levelIndex});

//   Widget getNextLevel() {
//     switch (levelIndex) {
//       case 1:
//         return Level2View(); // If Level 1, go to Level 2
//       case 2:
//         return Level3View(); // If Level 2, go to Level 3
//       // Add more cases as needed
//       default:
//         return SplashView();
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: LevelCompletedWidgets(
//         tittle: "Level $levelIndex",
//         page: getNextLevel(),  // Dynamically navigate to next level
//       ),
//     );
//   }
// }

// class LevelCompletedWidgets extends StatefulWidget {
//   final String tittle;
//   final Widget page;
//    final int levelIndex;
//   const LevelCompletedWidgets(
//       {super.key, required this.tittle, required this.page, required this.levelIndex});

//   @override
//   State<LevelCompletedWidget> createState() => _LevelCompletedViewState();
// }

// class _LevelCompletedViewState extends State<LevelCompletedWidget> {
//   double progress = 0.0;
//   @override
//   void initState() {
//     super.initState();
//     startLoadingAnimation();
//   }

//   void startLoadingAnimation() {
//     Timer.periodic(Duration(milliseconds: 500), (timer) {
//       if (progress < 1.0) {
//         setState(() {
//           progress += 0.1;
//         });
//       } else {
//         timer.cancel();
//         Future.delayed(Duration(milliseconds: 500), () {});
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           Container(
//             width: double.infinity,
//             height: double.infinity,
//             decoration: BoxDecoration(
//               image: DecorationImage(
//                 image:
//                     AssetImage('assets/third.png'), // Add your background image
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),
//           SizedBox(height: 20), // Space from top
//           SettingWidget(),
//           // Content
//           Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 SizedBox(height: 100),
//                 LevelCompletedDailog(),
//                 Text(
//                   "Level Completed",
//                   style: TextStyle(color: AppColors.whiteColor),
//                 ),
//                 SizedBox(height: 10),
//                 Stack(
//                   children: [
//                     Container(
//                       width: 288,
//                       height: 23,
//                       decoration: BoxDecoration(
//                         color: Colors.black,
//                         borderRadius: BorderRadius.circular(9),
//                         border: Border.all(
//                             color: AppColors.boederblueColor, width: 1),
//                       ),
//                       child: ClipRRect(
//                         borderRadius: BorderRadius.circular(9),
//                         child: ShaderMask(
//                           shaderCallback: (Rect bounds) {
//                             return LinearGradient(
//                               colors: [
//                                 HexColor("#FFA400"),
//                                 HexColor("#DA024D"),
//                               ],
//                               begin: Alignment.centerLeft,
//                               end: Alignment.centerRight,
//                             ).createShader(bounds);
//                           },
//                           child: LinearProgressIndicator(
//                             value: progress,
//                             backgroundColor: Colors.transparent,
//                             valueColor:
//                                 AlwaysStoppedAnimation<Color>(Colors.white),
//                             minHeight: 23,
//                           ),
//                         ),
//                       ),
//                     ),
//                     Positioned(
//                         right: 0,
//                         top: 0,
//                         child: Image.asset(
//                           "assets/gift.png",
//                           height: 37,
//                           width: 37,
//                           fit: BoxFit.cover,
//                         )),
//                   ],
//                 ),
//                 SizedBox(height: 20),
//                 AppBtn(
//                     tittle: Text(widget.tittle,
//                         style: TextStyle(
//                             color: AppColors.blackColor,
//                             fontSize: 31,
//                             fontWeight: FontWeight.w400)),
//                     height: 47,
//                     width: 188,
//                     gradientcolor1: HexColor("#FFD33E"),
//                     gradientcolor2: HexColor("#FEE46D"),
//                     colors: AppColors.greenColor,
//                     bordercolor: Colors.transparent,
//                     ontap: () {
//                       Get.offAll(
//                         widget.page,
//                       );
//                     }),
//                 SizedBox(height: 60),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:word_guess/AppModules/Level_2_Module/Views/level2_view.dart';
import 'package:word_guess/AppModules/SplashModule/Views/splash_view.dart';
import '../../../Dailog/level_completed_dailog.dart';
import '../../../Utils/utils.dart';
import '../../../Widgets/app_btn.dart';
import '../../../Widgets/setting_wifget.dart';
import '../../Level_5_Module/Views/level_5_view.dart';
import '../../level_3_Module/Views/level_3_view.dart';
import '../../level_4_Module/Views/level_4_view.dart';
import '../../level_6_Module/Views/level_6_view.dart';

class LevelCompletedViews extends StatelessWidget {
  final int levelIndex;

  const LevelCompletedViews({super.key, required this.levelIndex});

  Widget getNextLevel() {
    switch (levelIndex) {
      case 1:
        return Level2View(); // If Level 1, go to Level 2
      case 2:
        return Level3View(); // If Level 2, go to Level 3
      case 3:
        return Level4View();
      case 4:
        return Level5View();
      case 5:
        return Level6View();

      default:
        return SplashView(); // Default case (restart or home)
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CompletedWidgetss(
        tittle: "Level $levelIndex",
        page: getNextLevel(), // Dynamically navigate to next level
        levelIndex: levelIndex,
      ),
    );
  }
}

class CompletedWidgetss extends StatefulWidget {
  final String tittle;
  final Widget page;
  final int levelIndex;

  const CompletedWidgetss({
    super.key,
    required this.tittle,
    required this.page,
    required this.levelIndex,
  });

  @override
  State<CompletedWidgetss> createState() => _CompletedWidgetsstState();
}

class _CompletedWidgetsstState extends State<CompletedWidgetss> {
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
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/third.png'), // Background image
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 20), // Space from top
          SettingWidget(),
          // Content
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
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
                          color: AppColors.boederblueColor,
                          width: 1,
                        ),
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
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                AppBtn(
                  tittle: Text(
                    widget.tittle,
                    style: TextStyle(
                      color: AppColors.blackColor,
                      fontSize: 31,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  height: 47,
                  width: 188,
                  gradientcolor1: HexColor("#FFD33E"),
                  gradientcolor2: HexColor("#FEE46D"),
                  colors: AppColors.greenColor,
                  bordercolor: Colors.transparent,
                  ontap: () {
                    Get.offAll(widget.page);
                  },
                ),
                SizedBox(height: 60),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
