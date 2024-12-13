import 'dart:ui';
import 'package:flutter/material.dart';

class textstyles {
  static TextStyle boldtextblack() {
    return const TextStyle(
        color: Colors.black,
        fontFamily: "poppins",
        fontSize: 24,
        fontWeight: FontWeight.bold);
  }

  static TextStyle boldtextwhite() {
    return const TextStyle(
        color: Colors.white,
        fontFamily: "poppins",
        fontSize: 24,
        fontWeight: FontWeight.bold);
  }

  static TextStyle headlineblack() {
    return const TextStyle(
        color: Colors.black,
        fontFamily: "poppins",
        fontSize: 17,
        fontWeight: FontWeight.w500);
  }

  static TextStyle headlinewhite() {
    return const TextStyle(
        color: Colors.white,
        fontFamily: "poppins",
        fontSize: 17,
        fontWeight: FontWeight.w500);
  }

  static TextStyle lighweightgrey() {
    return const TextStyle(
        color: Colors.grey,
        fontFamily: "poppins",
        fontSize: 15,
        fontWeight: FontWeight.w500);
  }

  static TextStyle lighweightblue() {
    return const TextStyle(
        color: Colors.blue,
        fontFamily: "poppins",
        fontSize: 15,
        fontWeight: FontWeight.w500);
  }
}
