
import 'package:flutter/material.dart';
import 'package:datasource/models/instrument_risk_grade.dart';
import 'package:instuments_catalog/extentions/instrument_risk_grade_extentions.dart';

class ChipRiskLevelWidget extends StatelessWidget {
  final InstrumentRiskGrade risk;
  const ChipRiskLevelWidget({Key? key, required this.risk}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Chip(
        backgroundColor: risk.getBackgroundColor(),
        label: Text(risk.toStringText(), style: risk.getTextStyle())
    );
  }
}
