import 'package:excellence_teams_frontend/ui/resources/colors.dart';
import 'package:excellence_teams_frontend/ui/resources/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ETTextField extends StatelessWidget {
  final TextEditingController controller;
  final bool inputVisible;
  final String hintText;
  final Widget trailingIcon;
  final List<TextInputFormatter>? inputFormatter;

  const ETTextField({
    Key? key,
    required this.controller,
    this.inputVisible = true,
    required this.hintText,
    required this.trailingIcon,
    this.inputFormatter,
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
        floatingLabelStyle: const TextStyle(
          color: ETColors.green,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: ETColors.green,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: ETColors.grey,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        hintText: hintText,
        labelText: hintText,
        suffixIcon: trailingIcon,
      ),
    );
  }
}
