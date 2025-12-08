import 'package:flutter/material.dart';

class AppColors {
  static const deepSaffron = Color(0xFFFF9933);
  static const royalPurple = Color(0xFF6A0DAD);
  static const goldenYellow = Color(0xFFFFD700);
  static const deepViolet = Color(0xFF4B0082);
  static const softWhite = Color(0xFFFAF9F6);
  static const darkBg = Color(0xFF1A0B2E);
  
  static const spiritualGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [deepViolet, royalPurple, deepSaffron],
  );
  
  static const lightGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [softWhite, Color(0xFFF0E6FF)],
  );
}
