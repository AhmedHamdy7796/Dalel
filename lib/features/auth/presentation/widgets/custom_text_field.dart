import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild({
    super.key,
    required this.labelText,
  });
  final String labelText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 8,
        left: 8,
        top: 24,
      ),
      child: TextField(
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: AppTextStyels.poppins500style18
              .copyWith(color: AppColors.deepGray),
          border: getBorderStyel(),
          enabledBorder: getBorderStyel(),
          focusedBorder: getBorderStyel(),
        ),
      ),
    );
  }
}

OutlineInputBorder getBorderStyel() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(4),
    borderSide: BorderSide(color: AppColors.grey),
  );
}
