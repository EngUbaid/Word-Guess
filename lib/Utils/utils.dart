import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

import '../Model/levelModel.dart';
import '../Model/wordModel.dart';

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
 String level7Image = "assets/level7.png";
 String level11Image = "assets/level10.png";
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


final List<LevelModel> levels = [
      LevelModel(levelNumber: 1, words: [
        WordModel(
            word: "CAT", meaning: "The cat sat quietly \n on the windowsill."),
        WordModel(
            word: "ACT", meaning: "They decided to act in \n the school play."),
      ]),
      LevelModel(levelNumber: 2, words: [
        WordModel(
            word: "TAP", meaning: "She gave a gentle tap on \n the door."),
        WordModel(
            word: "PAT",
            meaning: "He offered a reassuring pat \n on the back."),
        WordModel(word: "AT", meaning: "The meeting will be held at \n noon."),
      ]),
      LevelModel(levelNumber: 3, words: [
        WordModel(
            word: "TOP",
            meaning:
                "She reached the top of the \n mountain after hours of hiking."),
        WordModel(
            word: "OPT",
            meaning: "You can opt for the salad \n or the soup for lunch."),
        WordModel(
            word: "TO",
            meaning: "He decided to go to the \n store before it closed."),
      ]),
      LevelModel(levelNumber: 4, words: [
        WordModel(
            word: "SALT",
            meaning: "She added salt to enhance \n the flavor of the dish."),
        WordModel(
            word: "LAST",
            meaning: "This will be the last time we \n discuss this topic."),
        WordModel(
            word: "ALT",
            meaning:
                "The alt of the mountain was \n impressive and breathtaking."),
        WordModel(
            word: "TALS",
            meaning: "The children built tall \n towers with their tals."),
      ]),
      LevelModel(levelNumber: 5, words: [
        WordModel(
            word: "ART", meaning: "She expressed her \n feelings through art."),
        WordModel(
            word: "TEAR",
            meaning: "He began to tear the paper \n for the project."),
        WordModel(
            word: "RATE",
            meaning:
                "The company decided to \n rate the products based on \n quality."),
        WordModel(
            word: "EAR",
            meaning: "She covered her ear to \n block out the loud noise."),
      ]),
      LevelModel(levelNumber: 6, words: [
        WordModel(
            word: "DRIB",
            meaning: "A small drib of paint fell on \n the floor."),
        WordModel(
            word: "BIRD",
            meaning: "The bird perched on the \n branch, chirping softly."),
        WordModel(
            word: "BID",
            meaning: "He placed a bid on the \n rare painting at the auction."),
        WordModel(
            word: "RIB",
            meaning: "She felt a sharp pain near \n her rib after the fall."),
      ]),
      LevelModel(levelNumber: 7, words: [
        WordModel(
            word: "EAT",
            meaning: "She loves to eat fresh fruits \n every morning."),
        WordModel(
            word: "MEAT",
            meaning: "The chef carefully prepared \n the meat for the dish."),
        WordModel(
            word: "ATE",
            meaning: "He quickly ate the sandwich \n before the meeting."),
        WordModel(
            word: "TEAM",
            meaning: "The team worked hard to \n complete the project."),
        WordModel(
            word: "TEA",
            meaning: "She sipped her tea while \n reading a book."),
      ]),
      LevelModel(levelNumber: 8, words: [
        WordModel(
            word: "PANS", meaning: "She bought new pans \n for the kitchen."),
        WordModel(
            word: "SNAP",
            meaning: "He took a quick snap of the \n beautiful sunset."),
        WordModel(
            word: "NAPS", meaning: "He often naps during his \n lunch break."),
        WordModel(
            word: "AND",
            meaning: "She invited her friends and \n family to the party."),
      ]),
      LevelModel(levelNumber: 9, words: [
        WordModel(word: "PRAY", meaning: "He knelt to pray for guidance."),
        WordModel(
            word: "PAY",
            meaning: "She promised to pay the \n money by tomorrow."),
        WordModel(
            word: "YAP",
            meaning: "The dog continued to yap at \n the mailman."),
        WordModel(
            word: "RAY",
            meaning: "A ray of sunlight entered \n through the window."),
        WordModel(
            word: "PAR",
            meaning: "He made par on the \n challenging golf course."),
      ]),
      LevelModel(levelNumber: 10, words: [
        WordModel(
            word: "BLOW",
            meaning: "A strong wind could blow the \n leaves off the trees."),
        WordModel(
            word: "BOW",
            meaning: "He gave a respectful bow \n to the audience."),
        WordModel(
            word: "BOWL", meaning: "She placed the salad in \n a large bowl."),
        WordModel(
            word: "OWL",
            meaning: "The owl hooted softly in \n the quiet forest."),
      ]),
      LevelModel(levelNumber: 11, words: [
        WordModel(
            word: "DRIP",
            meaning: "Water began to drip from the \n leaky faucet."),
        WordModel(
            word: "RID",
            meaning: "She wanted to rid the clutter from her \n room."),
        WordModel(
            word: "RIP",
            meaning: "He accidentally ripped his jacket \n on the nail."),
        WordModel(
            word: "DIP",
            meaning: "She gave the brush a quick dip \n in the paint."),
      ]),
      LevelModel(levelNumber: 12, words: [
        WordModel(
            word: "FAIR",
            meaning: "The judge made a fair decision in the \n case."),
        WordModel(
            word: "AIR",
            meaning: "The cool air refreshed them on the hot \n day."),
        WordModel(
            word: "FAR",
            meaning: "The mountain range appeared far on \n the horizon."),
        WordModel(
            word: "FIR",
            meaning: "The tall fir stood proudly in the \n forest."),
      ]),
    ];
