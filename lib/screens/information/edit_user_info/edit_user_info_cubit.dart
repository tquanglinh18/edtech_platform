import 'package:bloc/bloc.dart';
import 'package:edtech_platform/ui/commons/dialog_custom.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

part 'edit_user_info_state.dart';

class EditUserInfoCubit extends Cubit<EditUserInfoState> {
  EditUserInfoCubit() : super(EditUserInfoState());

  void selectDateFunc({
    required BuildContext context,
    required TextEditingController datePickerController,
  }) async {
    // DateTime? pickedDate = await showDatePicker(
    //   context: context,
    //   lastDate: DateTime.now(),
    //   firstDate: DateTime(2015),
    //   initialDate: DateTime.now(),
    // );
    // if (pickedDate == null) return;
    // datePickerController.text = DateFormat('dd/MM/yyyy').format(pickedDate);
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Basic dialog title'),
          content: const Text(
            'A dialog is a type of modal window that\n'
            'appears in front of app content to\n'
            'provide critical information, or prompt\n'
            'for a decision to be made.',
          ),
          actions: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text('Disable'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text('Enable'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
