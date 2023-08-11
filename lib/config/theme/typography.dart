import 'package:flutter/material.dart';
import 'package:news_app/config/theme/colors.dart';

class AppText {
  static const Color color = Colors.white;
  static const h1 = TextStyle(
    fontSize: 36.0,
    fontWeight: FontWeight.w600,
    color: AppColors.black,
  );
  static const h2 = TextStyle(
    fontSize: 24.0,
    fontWeight: FontWeight.w600,
    color: AppColors.black,
  );
  static const h3 = TextStyle(
    fontSize: 23.0,
    fontWeight: FontWeight.w700,
    color: AppColors.black,
  );

  static const b = TextStyle(
    fontWeight: FontWeight.bold,
    color: color,
  );
  static const b1 = TextStyle(
    fontSize: 25.0,
    fontWeight: FontWeight.w700,
  );
  static const b2 = TextStyle(
    fontSize: 15.0,
    fontWeight: FontWeight.w600,
  );
  static const b3 = TextStyle(
      fontSize: 10.0, fontWeight: FontWeight.w600, color: AppColors.black);

  static const s1 = TextStyle(
    fontSize: 17.0,
    fontWeight: FontWeight.w600,
    color: Colors.grey,
  );
  static const s2 = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w600,
    color: AppColors.background,
  );
  static const s3 = TextStyle(
    fontSize: 12.0,
    fontWeight: FontWeight.w600,
    color: AppColors.secondary,
  );
}
