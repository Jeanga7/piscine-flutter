import 'package:flutter/material.dart';

class AppColors {
  static const primary = Colors.blueAccent;
  static final lightPrimary = primary.withValues(alpha: .1);
  static const borderGray = Color(0xFFEEEEEE);
}

class AppTextStyles {
  static const header = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const info = TextStyle(fontSize: 20);
  static const qrLabel = TextStyle(fontSize: 18, fontWeight: FontWeight.bold);
}
