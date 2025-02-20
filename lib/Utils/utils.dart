import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class AppColors {
 static Color greenboxColor = HexColor("#58AF04");
  static Color blackColor = HexColor("#000000");
  static Color whiteColor = HexColor("#FFFFFF");
  static Color yellowColor = HexColor("#FFBC00");
  static Color blueColor = HexColor("#1E3066");
  static Color buttonColor = HexColor("#DB0054");
  static Color greenColor = HexColor("#68D300");
  static Color borderColor = HexColor("#D9D9D");
  static Color greyColor = HexColor("#CBCBCB");
  static Color boederblueColor = HexColor("#27AAE1");
  static Color boxblueColor = HexColor("#00A6E0");
}

commonimage(String image) {
 return 
 Positioned.fill(
   child: Image.asset(
      image,
      height: Get.height,
      width: Get.width,
      fit: BoxFit.cover,
    ),
 );
}

String level1Image = "assets/levelone.png";
String level2Image = "assets/level2.png";
 String secondImage = "assets/second.png";
 String shafuleImage = "assets/shafule.png";
// String level1Image = "assets/levelone.png";
// String level1Image = "assets/levelone.png";
// String level1Image = "assets/levelone.png";
// String level1Image = "assets/levelone.png";
// String level1Image = "assets/levelone.png";
// String level1Image = "assets/levelone.png";
// String level1Image = "assets/levelone.png";
// String level1Image = "assets/levelone.png";
// String level1Image = "assets/levelone.png";
// String level1Image = "assets/levelone.png";
// String level1Image = "assets/levelone.png";
// String level1Image = "assets/levelone.png";
// String level1Image = "assets/levelone.png";
