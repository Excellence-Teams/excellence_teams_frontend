import 'package:excellence_teams_frontend/ui/resources/resources.dart';
import 'package:flutter/material.dart';

class ETButton extends StatelessWidget {
  final Color backgroundColor;
  final String label;
  final Color labelColor;
  final double labelSize;
  final VoidCallback onClick;

  const ETButton({
    Key? key,
    this.backgroundColor = ETColors.black,
    required this.label,
    this.labelColor = ETColors.white,
    this.labelSize = 12,
    required this.onClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: backgroundColor,
        minimumSize: const Size(240, 40),
        maximumSize: const Size(240, 40),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            10,
          ),
        ),
      ),
      onPressed: onClick,
      child: Text(
        label,
        style: ETTextStyles.montSemiBold.copyWith(
          color: labelColor,
          fontSize: labelSize,
        ),
      ),
    );
  }
}
