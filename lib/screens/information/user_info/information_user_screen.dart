import 'package:edtech_platform/commons/app_colors.dart';
import 'package:edtech_platform/commons/app_dimens.dart';
import 'package:edtech_platform/commons/app_images.dart';
import 'package:edtech_platform/commons/app_text_style.dart';
import 'package:edtech_platform/screens/information/commons/container_shadow.dart';
import 'package:flutter/material.dart';

class InformationUserScreen extends StatefulWidget {
  const InformationUserScreen({super.key});

  @override
  State<InformationUserScreen> createState() => _InformationUserScreenState();
}

class _InformationUserScreenState extends State<InformationUserScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(AppDimens.paddingNormal),
      children: [
        _userIntroduce,
        const Divider(
          height: AppDimens.dividerHeigthNormal,
          color: Colors.transparent,
        ),
        _contactInfo(isVerify: false),
      ],
    );
  }
}

Widget get _userIntroduce {
  return ContainerShadow(
    containerChillWidget: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                'Giới thiệu',
                style: AppTextStyle.blackBold,
              ),
            ),
            Image.asset(AppImages.icEditUserInfor),
          ],
        ),
        const SizedBox(height: AppDimens.spaceHeightSmall),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Họ và tên',
              style: AppTextStyle.romanSilverS12Normal,
            ),
            Text(
              'Nguyen Linh Quang',
              style: AppTextStyle.outerSpaceS12W600,
            ),
            const Divider(
              height: AppDimens.dividerHeigthNormal,
              color: AppColors.dividerGrey,
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Ngày sinh',
              style: AppTextStyle.romanSilverS12Normal,
            ),
            Text(
              '03/03/2000',
              style: AppTextStyle.outerSpaceS12W600,
            ),
            const Divider(
              height: AppDimens.dividerHeigthNormal,
              color: AppColors.dividerGrey,
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Giới tính',
              style: AppTextStyle.romanSilverS12Normal,
            ),
            Text(
              'Nam',
              style: AppTextStyle.outerSpaceS12W600,
            ),
          ],
        ),
      ],
    ),
  );
}

Widget _contactInfo({required bool isVerify}) {
  return ContainerShadow(
    containerChillWidget: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                'Thông tin liên hệ',
                style: AppTextStyle.blackBold,
              ),
            ),
            Image.asset(AppImages.icEditUserInfor),
          ],
        ),
        const SizedBox(height: AppDimens.spaceHeightSmall),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Số điện thoại',
              style: AppTextStyle.romanSilverS12Normal,
            ),
            Text(
              '0858684389',
              style: AppTextStyle.outerSpaceS12W600,
            ),
            const Divider(
              height: AppDimens.dividerHeigthNormal,
              color: AppColors.dividerGrey,
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Email',
              style: AppTextStyle.romanSilverS12Normal,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'tquanglinh18@gmail.com',
                    style: AppTextStyle.outerSpaceS12W600,
                  ),
                ),
                Container(
                  width: 110,
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(AppDimens.radiusFull),
                    color: isVerify
                        ? AppColors.mainColor.withOpacity(0.2)
                        : AppColors.paradisePink.withOpacity(0.2),
                  ),
                  child: Text(
                    isVerify ? 'Đã xác thực' : 'Chưa xác thực',
                    textAlign: TextAlign.center,
                    style: isVerify
                        ? AppTextStyle.primaryS12W600
                        : AppTextStyle.paradisePinkS12W600,
                  ),
                ),
              ],
            )
          ],
        ),
      ],
    ),
  );
}
