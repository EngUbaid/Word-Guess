import 'package:flutter/material.dart';

Widget letterContainer(String letter, color) {
  return Container(
    width: 50,
    height: 50,
    margin: EdgeInsets.all(5),
    alignment: Alignment.center,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(50),
      color: color,
    ),
    child: Text(
      letter,
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
  );
}
