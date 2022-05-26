import 'package:flutter/material.dart';

class ETText extends Text {
  // extra field for textStyle for manipulation later
  // when scaling down the fontSize on smaller devices
  @override
  // ignore: overridden_fields
  final TextStyle? style;

  const ETText(
    super.data, {
    Key? key,
    this.style,
    super.strutStyle,
    super.textAlign,
    super.textDirection,
    super.locale,
    super.softWrap,
    super.overflow,
    super.textScaleFactor,
    super.maxLines,
    super.semanticsLabel,
    super.textWidthBasis,
    super.textHeightBehavior,
  }) : super(
          key: key,
          style: style,
        );
}
