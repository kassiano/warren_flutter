
import 'package:datasource/models/instrument_risk_grade.dart';
import 'package:flutter/material.dart';
import 'package:core_ui/themes/app_colors.dart';
import 'package:core_ui/themes/text_styles.dart';

extension RiskLevelExtensions on InstrumentRiskGrade {
  String toStringText() {
    switch(this) {
      case InstrumentRiskGrade.LOW:
        return "Risco Baixo";
      case InstrumentRiskGrade.HIGH:
        return "Risco Alto";
      case InstrumentRiskGrade.MEDIUM:
        return "Risco Médio";
    }
  }

  Color getBackgroundColor() {
    switch(this) {
      case InstrumentRiskGrade.LOW:
        return AppColors.statusPositiveBackgroundLight;
      case InstrumentRiskGrade.HIGH:
        return AppColors.statusNegativeBackgroundLight;
      case InstrumentRiskGrade.MEDIUM:
        return AppColors.statusAlertBackgroundLight;
    }
  }

  TextStyle getTextStyle() {
    switch(this) {
      case InstrumentRiskGrade.LOW:
        return TextStyles.riskLow;
      case InstrumentRiskGrade.HIGH:
        return TextStyles.riskHigh;
      case InstrumentRiskGrade.MEDIUM:
        return TextStyles.riskMedium;
    }
  }

}