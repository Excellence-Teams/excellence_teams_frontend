import 'package:excellence_teams_client/ui/resources/resources.dart';
import 'package:excellence_teams_client/ui/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ETTextFieldValidation extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final IconData iconData;
  final bool checkForEmptyFields;
  final VoidCallback onChange;
  final bool showInput;
  final List<TextInputFormatter> inputFormatters;
  final bool isOptional;

  const ETTextFieldValidation(
    this.controller,
    this.hintText,
    this.iconData, {
    required this.checkForEmptyFields,
    required this.onChange,
    this.showInput = true,
    this.inputFormatters = const [],
    this.isOptional = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      child: ETTextField(
        controller: controller,
        hintText: hintText,
        inputFormatter: inputFormatters,
        trailingIcon: Icon(
          iconData,
          color: controller.text.isEmpty && checkForEmptyFields && !isOptional
              ? ETColors.lightRed
              : ETColors.grey,
        ),
        inputMissing:
            controller.text.isEmpty && checkForEmptyFields && !isOptional,
        onChange: () => onChange,
        inputVisible: showInput,
      ),
    );
  }
}
