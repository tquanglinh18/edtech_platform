import 'app_colors.dart';
import 'package:flutter/material.dart';

class AppTextStyle {
  ///Black
  static const black = TextStyle(color: Colors.black);
  static final blackBold = black.copyWith(fontWeight: FontWeight.bold);

  //S12
  static final blackS12 = black.copyWith(fontSize: 12);

  //S16
  static final blackS16 = black.copyWith(fontSize: 16);

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
  static final romanSilverS12W600 =
      romanSilver.copyWith(fontSize: 12, fontWeight: FontWeight.w600);

  static const outerSpace = TextStyle(color: AppColors.outerSpace);
  static final outerSpaceS12W600 =
      outerSpace.copyWith(fontSize: 12, fontWeight: FontWeight.w600);
  static final outerSpaceS14W600 =
  outerSpace.copyWith(fontSize: 14, fontWeight: FontWeight.w600);

  ///HintText
  static final hintTextGrey = TextStyle(color: AppColors.hintTextGrey.withOpacity(0.5));


}
