import 'package:edtech_platform/commons/app_colors.dart';
import 'package:edtech_platform/ui/commons/loading_indicator.dart';
import 'package:flutter/material.dart';

enum ButtonType {
  ACTIVE,
  IN_ACTIVE,
}

extension ButtonTypeExtension on ButtonType {
  Color get colorBackgroundStatus {
    switch (this) {
      case ButtonType.ACTIVE:
        return AppColors.mainColor;
      case ButtonType.IN_ACTIVE:
        return AppColors.shadowColor;
    }
  }
}

class AppButtons extends StatelessWidget {
  final String? title;
  final VoidCallback? onTap;
  final ButtonType buttonType;
  final bool isLoading;
  final double? width;
  final double heightButton;
  final double circularButton;

  const AppButtons({
    Key? key,
    this.title,
    this.onTap,
    this.buttonType = ButtonType.IN_ACTIVE,
    this.isLoading = false,
    this.width,
    this.heightButton = 32,
    this.circularButton = 8,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttonType == ButtonType.ACTIVE ? onTap : null,
      child: Container(
        padding: const EdgeInsets.all(4),
        height: heightButton,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(circularButton),
          color: buttonType.colorBackgroundStatus,
        ),
        child: Center(
          child: isLoading
              ? const LoadingIndicatorWidget(color: Colors.white)
              : Text(
            title ?? '',
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}