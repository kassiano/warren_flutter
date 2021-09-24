
import 'package:flutter/material.dart';
import 'package:instuments_catalog/widgets/instrument_row_widget.dart';
import 'package:intl/intl.dart';
import 'chip_risk_level_widget.dart';
import 'package:core_ui/themes/text_styles.dart';
import 'package:datasource/models/instrument.dart';
import 'package:core_ui/themes/app_colors.dart';

class InstrumentCardWidget extends StatelessWidget {

  final Instrument instrument;
  const InstrumentCardWidget({Key? key, required this.instrument}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 290,
        margin: EdgeInsets.only(top: 8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              ChipRiskLevelWidget(risk: instrument.riskGrade),

              Container(
                  margin: EdgeInsets.only(top: 8),
                  child: Text(instrument.name, style: TextStyles.title,)
              ),

              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Divider(
                  height: 1,
                  color: AppColors.dividerPrimaryLight,
                ),
              ),

              InstrumentRowWidget(leftText: "Rentabilidade", rigthText: instrument.profitability),

              InstrumentRowWidget(
                  leftText: "Depósito inicial",
                  rigthText: NumberFormat.simpleCurrency(locale: 'pt_BR').format(instrument.minimumInitialInvestment)
              ),

              InstrumentRowWidget(
                  leftText: "Movimentação mínima",
                  rigthText: NumberFormat.simpleCurrency(locale: 'pt_BR').format(instrument.minimumFinancialMovement)
              ),

              InstrumentRowWidget(leftText: "Resgate em até", rigthText: instrument.liquidity.formatted),

            ],
          ),
        ),
      ),
    );
  }
}
