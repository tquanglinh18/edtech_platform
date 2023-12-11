import 'package:edtech_platform/commons/app_text_style.dart';
import 'package:flutter/material.dart';

class LabelTextFieldSelect extends StatelessWidget {
  final String labelText;
  final TextStyle? labelStyle;
  final String highlightTextRequired;
  final Widget? suffixIcon;
  final Widget? suffixIconRight;
  final BoxConstraints? suffixIconConstraints;
  final TextEditingController? textEditingController;
  final TextStyle? textStyle;
  final String hintText;
  final TextStyle? hintStyle;
  final ValueChanged<dynamic>? onChanged;
  final TextInputType textInputType;
  final FormFieldValidator<String>? validator;
  final VoidCallback? onTap;
  final List<DropdownMenuItem<dynamic>> items;
  final String? value;

  const LabelTextFieldSelect({
    Key? key,
    this.labelText = "",
    this.labelStyle,
    this.highlightTextRequired = "*",
    this.suffixIcon,
    this.suffixIconRight,
    this.suffixIconConstraints,
    this.textEditingController,
    this.textStyle,
    this.hintText = "",
    this.hintStyle,
    this.onChanged,
    this.textInputType = TextInputType.text,
    this.validator,
    this.onTap,
    this.items = const [],
    this.value = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: highlightTextRequired != "" && highlightTextRequired.isNotEmpty
              ? RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: labelText,
                        style: labelStyle ?? AppTextStyle.romanSilverS12W600,
                      ),
                      TextSpan(
                        text: highlightTextRequired,
                        style: AppTextStyle.blackS12.copyWith(
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                )
              : Text(
                  labelText,
                  style: labelStyle ?? AppTextStyle.romanSilverS12W600,
                ),
        ),
        DropdownButtonFormField(
          onTap: onTap ?? () => {},
          onChanged: onChanged,
          style: textStyle ?? AppTextStyle.outerSpaceS14W600,
          value: value,
          decoration: InputDecoration(
            border: InputBorder.none,
            fillColor: Colors.white,
            hintStyle: hintStyle ?? AppTextStyle.outerSpaceS12W600,
            hintText: hintText,
            isDense: true,
            suffixIcon: suffixIcon,
            suffixIconConstraints: suffixIconConstraints ??
                const BoxConstraints(
                  maxHeight: 32,
                  maxWidth: 32,
                ),
            counterText: "",
          ),
          items: items,
        ),
        textEditingController != null
            ? ValueListenableBuilder(
                valueListenable: textEditingController!,
                builder: (context, TextEditingValue controller, child) {
                  final isValid = validator?.call(controller.text) ?? "";
                  return isValid != ""
                      ? Container(
                          padding: const EdgeInsets.only(top: 2),
                          child: Text(
                            isValid,
                            style: AppTextStyle.blackS12.copyWith(
                              color: Colors.red,
                            ),
                          ),
                        )
                      : const SizedBox();
                },
              )
            : const SizedBox(),
      ],
    );
  }
}
