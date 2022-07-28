import 'package:excellence_teams_client/ui/resources/colors.dart';
import 'package:excellence_teams_client/ui/resources/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ETTextField extends StatelessWidget {
  final TextEditingController controller;
  final bool inputVisible;
  final String hintText;
  final Widget? trailingIcon;
  final List<TextInputFormatter>? inputFormatter;
  final bool inputMissing;
  final VoidCallback? onChange;

  const ETTextField({
    Key? key,
    required this.controller,
    this.inputVisible = true,
    required this.hintText,
    this.trailingIcon,
    this.inputFormatter,
    this.inputMissing = false,
    this.onChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: !inputVisible,
      inputFormatters: inputFormatter,
      style: ETTextStyles.montRegular.copyWith(
        color: ETColors.black,
        fontSize: 16,
      ),
      cursorColor: ETColors.grey,
      decoration: InputDecoration(
        floatingLabelStyle: TextStyle(
          color: ETColors.green,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: ETColors.green,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: inputMissing ? ETColors.lightRed : ETColors.grey,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        hintText: hintText,
        labelText: hintText,
        suffixIcon: trailingIcon,
      ),
      onChanged: (_) => onChange?.call(),
    );
  }
}
