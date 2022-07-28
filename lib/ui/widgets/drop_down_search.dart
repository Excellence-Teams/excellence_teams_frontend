import 'package:dropdown_search/dropdown_search.dart';
import 'package:excellence_teams_client/ui/resources/resources.dart';
import 'package:flutter/material.dart';

class ETDropDownSearch<T> extends StatelessWidget {
  const ETDropDownSearch({
    Key? key,
    required this.onSelected,
    required this.tags,
    required this.label,
    required this.icon,
  }) : super(key: key);

  final Function(List<T> tags) onSelected;
  final List<T> tags;
  final String label;
  final IconData icon;

  @override
  Widget build(BuildContext context) => Container(
        width: 400,
        constraints: BoxConstraints(minHeight: 52),
        child: DropdownSearch<T>.multiSelection(
          items: tags,
          onChanged: onSelected,
          dropdownDecoratorProps: dropDownDecoratorProps(icon, label),
        ),
      );

  static DropDownDecoratorProps dropDownDecoratorProps(
          IconData icon, String label) =>
      DropDownDecoratorProps(
        dropdownSearchDecoration: InputDecoration(
          // label: Text(label, style: ETTextStyles.montSemiBold),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: ETColors.grey, width: 1),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: ETColors.grey,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: ETColors.green,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          focusColor: ETColors.green,
          suffixIcon: Icon(icon),
          suffixIconColor: ETColors.grey,
          fillColor: ETColors.green,
          hintText: label,
        ),
      );
}
