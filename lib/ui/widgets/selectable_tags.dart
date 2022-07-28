import 'package:excellence_teams_client/ui/resources/resources.dart';
import 'package:flutter/material.dart';

class StateButton extends StatelessWidget {
  final String text;
  final bool isActive;
  final VoidCallback onClick;

  const StateButton({
    Key? key,
    required this.text,
    required this.isActive,
    required this.onClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onClick,
      child: Text(
        text,
        style: ETTextStyles.montBold.copyWith(color: ETColors.white),
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          isActive ? ETColors.lightRed : ETColors.grey.withOpacity(0.5),
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
          ),
        ),
      ),
    );
  }
}
