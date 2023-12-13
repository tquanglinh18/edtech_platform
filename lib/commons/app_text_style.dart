import 'app_colors.dart';
import 'package:flutter/material.dart';

class AppTextStyle {
  ///Black
  static const black = TextStyle(color: Colors.black);
  static final blackBold = black.copyWith(fontWeight: FontWeight.bold);

  ///ParadisePink
  static const paradisePink = TextStyle(color: AppColors.paradisePink);
  static final paradisePinkS12W600 =
  paradisePink.copyWith(fontSize: 12, fontWeight: FontWeight.w600);

  ///White
  static const white = TextStyle(color: Colors.white);

  ///WithMainColor
  static const primary = TextStyle(color: AppColors.mainColor);

  static final primaryS12W600 =
      primary.copyWith(fontSize: 12, fontWeight: FontWeight.w600);

  static const romanSilver = TextStyle(color: AppColors.romanSilver);
  static final romanSilverS12Normal =
      romanSilver.copyWith(fontSize: 12, fontWeight: FontWeight.normal);

  static const outerSpace = TextStyle(color: AppColors.outerSpace);
  static final outerSpaceS12W600 =
      outerSpace.copyWith(fontSize: 12, fontWeight: FontWeight.w600);
}
