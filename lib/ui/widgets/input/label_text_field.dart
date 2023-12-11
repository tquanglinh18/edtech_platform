import 'package:edtech_platform/commons/app_colors.dart';
import 'package:edtech_platform/commons/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LabelTextField extends StatelessWidget {
  final String labelText;
  final TextStyle? labelStyle;
  final String highlightTextRequired;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final BoxConstraints? suffixIconConstraints;
  final BoxConstraints? prefixIconConstraints;
  final TextEditingController? textEditingController;
  final TextStyle? textStyle;
  final String hintText;
  final TextStyle? hintStyle;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onSubmitted;
  final TextInputType textInputType;
  final FormFieldValidator<String>? validator;
  final List<TextInputFormatter>? inputFormatters;
  final bool enabled;
  final int? maxLength;
  final bool readOnly;
  final VoidCallback? onTap;

  const LabelTextField({
    Key? key,
    this.labelText = "",
    this.labelStyle,
    this.highlightTextRequired = "*",
    this.suffixIcon,
    this.prefixIcon,
    this.suffixIconConstraints,
    this.prefixIconConstraints,
    this.textEditingController,
    this.textStyle,
    this.hintText = "",
    this.hintStyle,
    this.onChanged,
    this.onSubmitted,
    this.textInputType = TextInputType.text,
    this.validator,
    this.inputFormatters,
    this.enabled = true,
    this.maxLength,
    this.readOnly = false,
    this.onTap,
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
        TextField(
          onTap: onTap ?? () => {},
          readOnly: readOnly,
          enabled: enabled,
          onSubmitted: onSubmitted,
          onChanged: onChanged,
          controller: textEditingController,
          style: textStyle ?? AppTextStyle.outerSpaceS14W600,
          maxLines: 1,
          maxLength: maxLength,
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
            prefixIcon: prefixIcon,
            prefixIconConstraints: prefixIconConstraints ??
                const BoxConstraints(
                  maxHeight: 32,
                  maxWidth: 32,
                ),
            counterText: "",
          ),
          cursorColor: AppColors.textFieldCursor,
          keyboardType: textInputType,
          inputFormatters: inputFormatters,
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
