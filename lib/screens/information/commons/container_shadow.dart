import 'package:edtech_platform/commons/app_dimens.dart';
import 'package:edtech_platform/commons/app_shadow.dart';
import 'package:flutter/material.dart';

class ContainerShadow extends StatelessWidget {
  final Widget containerChillWidget;

  const ContainerShadow({super.key, required this.containerChillWidget});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppDimens.paddingNormal),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(AppDimens.radiusNormal),
        boxShadow: AppShadow.containerShadow,
      ),
      child: containerChillWidget,
    );
  }
}
