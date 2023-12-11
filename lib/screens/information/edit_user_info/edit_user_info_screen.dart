import 'package:edtech_platform/commons/app_dimens.dart';
import 'package:edtech_platform/screens/information/commons/container_shadow.dart';
import 'package:edtech_platform/ui/widgets/input/label_text_field.dart';
import 'package:edtech_platform/ui/widgets/input/label_text_field_select.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import 'edit_user_info_cubit.dart';

class EditUserInfoScreen extends StatefulWidget {
  const EditUserInfoScreen({super.key});

  @override
  State<EditUserInfoScreen> createState() => _EditUserInfoScreenState();
}

class _EditUserInfoScreenState extends State<EditUserInfoScreen> {
  TextEditingController datePickerController = TextEditingController();
  var _value = '-1';
  late EditUserInfoCubit _editUserInfoCubit;

  @override
  void initState() {
    _editUserInfoCubit = EditUserInfoCubit();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<EditUserInfoCubit, EditUserInfoState>(
      bloc: _editUserInfoCubit,
      listener: (context, state) {},
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(AppDimens.paddingNormal),
          child: ContainerShadow(
            containerChillWidget: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                LabelTextField(
                  labelText: "Họ và tên",
                  highlightTextRequired: "",
                  hintText: 'Trần Quang Linh',
                  onTap: () => () => {},
                ),
                const Divider(
                  height: 24,
                ),
                LabelTextField(
                  textEditingController: datePickerController,
                  labelText: "Ngày sinh",
                  highlightTextRequired: "",
                  hintText: DateFormat('dd/MM/yyyy').format(DateTime.now()),
                  readOnly: true,
                  onTap: () => _editUserInfoCubit.selectDateFunc(
                    context: context,
                    datePickerController: datePickerController,
                  ),
                  suffixIcon: const Icon(
                    Icons.date_range,
                    size: 20,
                  ),
                ),
                const Divider(
                  height: 24,
                ),
                LabelTextFieldSelect(
                  labelText: 'Giới tính',
                  highlightTextRequired: '',
                  value: _value,
                  onChanged: (value) {
                    _value = value ?? '-1';
                  },
                  items: const [
                    DropdownMenuItem(
                      value: '-1',
                      child: Text('- Selected - '),
                    ),
                    DropdownMenuItem(
                      value: '1',
                      child: Text('Nam'),
                    ),
                    DropdownMenuItem(
                      value: '2',
                      child: Text('Nữ'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
