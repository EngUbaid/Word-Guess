import 'package:flutter/material.dart';
import 'package:word_guess/Utils/utils.dart';
import 'package:word_guess/Widgets/app_btn.dart';
import '../../../Widgets/setting_wifget.dart';

class CommonSpellingWidget extends StatelessWidget {
  final VoidCallback ontap;
  final Widget speeling;
  const CommonSpellingWidget({
    super.key,
    required this.speeling,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // children: [
        // commonimage(secondImage),
         width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image:
                    AssetImage(secondImage), 
                fit: BoxFit.cover,
              ),
            ),

          // Content
        child:   Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 10), // Space from top
                SettingWidget(),
                SizedBox(height: 100),
                speeling,
                Spacer(), // Pushes everything above

                SizedBox(height: 20),
                AppBtn(
                    tittle: Text("NEXT",
                        style: TextStyle(
                          color: AppColors.whiteColor,
                        )),
                    height: 40,
                    width: 217,
                    colors: AppColors.greenColor,
                    bordercolor: Colors.transparent,
                    ontap: ontap),

                SizedBox(height: 60),
              ],
            ),
          ),
      //  ],
      ),
    );
  }
}
