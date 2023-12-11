import 'package:edtech_platform/commons/app_colors.dart';
import 'package:edtech_platform/commons/app_dimens.dart';
import 'package:edtech_platform/commons/app_text_style.dart';
import 'package:edtech_platform/screens/information/commons/container_shadow.dart';
import 'package:edtech_platform/ui/commons/app_buttons.dart';
import 'package:flutter/material.dart';

class OptionInfor {
  final IconData? icon;
  final String? title;

  const OptionInfor({
    this.icon,
    this.title,
  });
}

final List<OptionInfor> _optionInfoItems = <OptionInfor>[
  const OptionInfor(
    icon: Icons.info_outline,
    title: 'Thong tin tia khoan',
  ),
  const OptionInfor(
    icon: Icons.info_outline,
    title: 'Goi dich vu',
  ),
  const OptionInfor(
    icon: Icons.info_outline,
    title: 'Cai dat',
  ),
  const OptionInfor(
    icon: Icons.info_outline,
    title: 'Ho tro',
  ),
];

class InformationScreen extends StatefulWidget {
  const InformationScreen({super.key});

  @override
  State<InformationScreen> createState() => _InformationScreenState();
}

class _InformationScreenState extends State<InformationScreen> {
  @override
  Widget build(BuildContext context) {
    double widthScreen = MediaQuery.of(context).size.width;
    double heightScreen = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Container(
          height: heightScreen * 2 / 15,
          width: widthScreen,
          decoration: const BoxDecoration(
            color: AppColors.mainColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(32),
              bottomRight: Radius.circular(32),
            ),
          ),
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(AppDimens.paddingNormal),
            child: Column(
              children: [
                _accountAuthentication(),
                const Divider(
                  color: Colors.transparent,
                  height: 36,
                ),
                ContainerShadow(
                  containerChillWidget: _optionInfor(
                    icon: Icons.info_outline,
                    title: 'Tai khoan ban dang lien ket!',
                    onPress: () => {},
                  ),
                ),
                const Divider(
                  color: Colors.transparent,
                  height: 36,
                ),
                ContainerShadow(
                  containerChillWidget: ListView.separated(
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(0),
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      return _optionInfor(
                        icon: _optionInfoItems[index].icon ?? Icons.abc,
                        title:
                            _optionInfoItems[index].title ?? "Khong co title",
                        onPress: () => {},
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return const Divider(
                        height: 36,
                      );
                    },
                    itemCount: _optionInfoItems.length,
                  ),
                ),
                const Divider(
                  color: Colors.transparent,
                  height: 36,
                ),
                GestureDetector(
                  child: const Text(
                    'Dang xuat',
                    style: TextStyle(
                        color: AppColors.mainColor,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                const Divider(
                  color: Colors.transparent,
                  height: 36,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Phát triển bởi VTC',
                      style: TextStyle(
                        color: AppColors.greyDisable,
                      ),
                    ),
                    Container(
                      height: 5,
                      width: 5,
                      margin: const EdgeInsets.symmetric(horizontal: 12),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.greyDisable,
                      ),
                    ),
                    const Text(
                      'Hotline: 1900636876',
                      style: TextStyle(
                        color: AppColors.greyDisable,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

Widget _optionInfor({IconData? icon, String? title, Function()? onPress}) {
  return GestureDetector(
    onTap: onPress ?? () => {},
    child: Row(
      children: [
        Icon(
          icon ?? Icons.info_outline,
          color: AppColors.icInformationUser,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Text(title ?? 'Khong co title'),
          ),
        ),
        const Icon(
          Icons.navigate_next,
          color: AppColors.greyDisable,
        ),
      ],
    ),
  );
}

Widget _accountAuthentication() {
  return ContainerShadow(
    containerChillWidget: Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Doi chut da',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                'Ban chua xac thuc tai khoan ',
                style: AppTextStyle.paradisePinkS12W600,
              )
            ],
          ),
        ),
        const AppButtons(
          width: 120,
          buttonType: ButtonType.ACTIVE,
          title: 'Xac thuc ngay',
        ),
      ],
    ),
  );
}
