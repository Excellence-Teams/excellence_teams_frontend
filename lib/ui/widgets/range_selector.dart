import 'package:excellence_teams_client/ui/resources/colors.dart';
import 'package:excellence_teams_client/ui/resources/text_styles.dart';
import 'package:flutter/material.dart';

class ETRangeSlider extends StatefulWidget {
  final String description;
  final int? divisions;
  final RangeValues initialValues;
  final RangeValues maxValues;
  final Function(RangeValues values) onChanged;
  const ETRangeSlider({
    Key? key,
    required this.description,
    this.divisions,
    required this.initialValues,
    required this.maxValues,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<ETRangeSlider> createState() => _ETRangeSliderState();
}

class _ETRangeSliderState extends State<ETRangeSlider> {
  late RangeValues _values;

  @override
  void initState() {
    super.initState();
    _values = widget.initialValues;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: ETColors.grey,
          width: 1,
        ),
      ),
      height: 82,
      width: 400,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                widget.description,
                style: ETTextStyles.montRegular.copyWith(fontSize: 16),
              ),
              Text(
                '${_values.start.round().toString()} - ${_values.end.round().toString()}',
                style: ETTextStyles.montBold.copyWith(
                  fontSize: 18,
                  color: ETColors.green,
                ),
              )
            ],
          ),
          RangeSlider(
            values: _values,
            onChanged: (values) {
              setState(() {
                _values = values;
              });
              widget.onChanged(values);
            },
            min: widget.maxValues.start,
            max: widget.maxValues.end,
            labels: RangeLabels(
              _values.start.round().toString(),
              _values.end.round().toString(),
            ),
            activeColor: ETColors.green,
            inactiveColor: ETColors.limeGreen,
            divisions: widget.divisions,
          ),
        ],
      ),
    );
  }
}
