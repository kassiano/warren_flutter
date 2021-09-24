import 'package:core_ui/themes/app_colors.dart';
import 'package:flutter/material.dart';

class ChipFilterWidget extends StatefulWidget {
  final String label;
  final Function(bool selected) onPressed;
  final bool isSelected;
  const ChipFilterWidget({Key? key, required this.label, required this.onPressed, this.isSelected = false}) : super(key: key);

  @override
  _ChipFilterWidgetState createState() => _ChipFilterWidgetState();
}

class _ChipFilterWidgetState extends State<ChipFilterWidget> {

  bool selected = false;

  @override
  void initState() {
    selected = widget.isSelected;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ActionChip(
          backgroundColor: selected ? AppColors.statusAlertBackgroundLight : null,
          label: Text(widget.label),
          onPressed: () {
            setState(() {
              selected = !selected;
            });
            widget.onPressed.call(selected);
          },
      ),
    );
  }
}
