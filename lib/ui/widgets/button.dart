import 'package:excellence_teams_client/ui/resources/resources.dart';
import 'package:excellence_teams_client/ui/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'button.freezed.dart';

@freezed
class ButtonState with _$ButtonState {
  const factory ButtonState.normal() = _Normal;
  const factory ButtonState.loading() = _Loading;
  const factory ButtonState.success() = _Success;
}

class ETButton extends StatelessWidget {
  final ButtonState state;
  final Color backgroundColor;
  final Color successColor;
  final String label;
  final String? successLabel;
  final Color labelColor;
  final double labelSize;
  final VoidCallback onClick;

  const ETButton({
    Key? key,
    this.state = const ButtonState.normal(),
    this.backgroundColor = ETColors.black,
    this.successColor = ETColors.white,
    required this.label,
    this.labelColor = ETColors.white,
    this.successLabel,
    this.labelSize = 12,
    required this.onClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: AnimatedContainer(
        alignment: Alignment.center,
        constraints: BoxConstraints.tight(Size(240, 40)),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: state.map(
            normal: (_) => backgroundColor,
            loading: (_) => backgroundColor,
            success: (_) => successColor,
          ),
          border: Border.all(
            color: state.mapOrNull(
                  success: (_) => ETColors.black,
                ) ??
                Colors.transparent,
            width: 3,
          ),
          boxShadow: ETColors.boxShadow,
        ),
        duration: const Duration(milliseconds: 300),
        child: state.map(
          normal: (_) => ETText(
            label,
            style: ETTextStyles.montSemiBold.copyWith(
              color: labelColor,
              fontSize: labelSize,
            ),
          ),
          loading: (_) => SizedBox(
            height: 16,
            width: 16,
            child: CircularProgressIndicator(
              strokeWidth: 2,
              color: ETColors.white,
            ),
          ),
          success: (_) => ETText(
            successLabel ?? label,
            style: ETTextStyles.montSemiBold.copyWith(
              color: ETColors.black,
              fontSize: labelSize,
            ),
          ),
        ),
      ),
    );
  }
}
