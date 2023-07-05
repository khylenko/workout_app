import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:personal_workout_app/generated_assets/colors.gen.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    required this.controller,
    required this.hintText,
    this.textInputAction = TextInputAction.next,
    this.keyboardType = TextInputType.text,
    this.textCapitalization = TextCapitalization.none,
    this.maxLines = 1,
    this.maxTextLength,
    this.allowWhiteSpace = false,
    super.key,
  });
  final TextEditingController controller;
  final TextInputAction textInputAction;
  final TextInputType keyboardType;
  final TextCapitalization textCapitalization;
  final String hintText;
  final int maxLines;
  final int? maxTextLength;
  final bool allowWhiteSpace;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      textInputAction: textInputAction,
      scrollPadding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom + 50.0,
      ),
      cursorColor: ColorName.c0021FF,
      keyboardType: keyboardType,
      maxLines: maxLines,
      textCapitalization: textCapitalization,
      enableSuggestions: false,
      autocorrect: false,
      decoration: InputDecoration(
        filled: true,
        fillColor: ColorName.white,
        border: InputBorder.none,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorName.c1D1D1B.withOpacity(
              0.2,
            ),
          ),
          borderRadius: BorderRadius.circular(
            14,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: ColorName.c0021FF,
          ),
          borderRadius: BorderRadius.circular(
            14,
          ),
        ),
        hintText: hintText,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 16,
        ),
      ),
      maxLength: maxTextLength,
      inputFormatters: [
        if (!allowWhiteSpace) FilteringTextInputFormatter.deny(RegExp('[ ]')),
        if (maxTextLength != null)
          LengthLimitingTextInputFormatter(maxTextLength)
      ],
    );
  }
}
