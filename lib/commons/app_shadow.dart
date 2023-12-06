import 'package:edtech_platform/commons/app_colors.dart';
import 'package:flutter/material.dart';

class AppShadow {
  static final containerShadow = [
    const BoxShadow(
      color: AppColors.shadowColor,
      spreadRadius: 0,
      blurRadius: 24,
      offset: Offset(4, 6),
    ),
  ];
}