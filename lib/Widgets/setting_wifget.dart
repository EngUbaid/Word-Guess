import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:word_guess/AppModules/settingModule/views/setting_view.dart';
import 'package:word_guess/Widgets/app_btn.dart';

import '../Utils/utils.dart';

SettingWidget() {
  return Padding(
    padding: const EdgeInsets.only(top: 30.0, right: 20, left: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            AppBtn(
              tittle: Row(
                children: [
                  Image.asset("assets/diamond.png"),
                  const SizedBox(
                    width: 20,
                  ),
                  Text("800",
                      style: GoogleFonts.aBeeZee(
                          fontSize: 11, color: AppColors.whiteColor))
                ],
              ),
              height: 21,
              width: 85,
              colors: Colors.transparent,
              bordercolor: AppColors.whiteColor,
              ontap: () {},
            ),
            const SizedBox(
              width: 10,
            ),
            AppBtn(
              tittle: Row(
                children: [
                  Image.asset("assets/coins.png"),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    "1000",
                    style: GoogleFonts.aBeeZee(
                        fontSize: 11, color: AppColors.whiteColor),
                  )
                ],
              ),
              height: 21,
              width: 85,
              colors: Colors.transparent,
              bordercolor: AppColors.whiteColor,
              ontap: () {},
            )
          ],
        ),
        InkWell(
            onTap: () {
              Get.to(() => SettingView());
            },
            child: Image.asset("assets/setting.png")),
      ],
    ),
  );
}
