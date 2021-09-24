
import 'package:datasource/models/instrument_category.dart';
import 'package:datasource/models/instrument_risk_grade.dart';
import 'package:flutter/material.dart';
import 'package:core_ui/widgets/section_title.dart';
import 'package:instuments_catalog/extentions/instrument_risk_grade_extentions.dart';
import 'package:instuments_catalog/pages/instrument_filter.dart';

import 'chip_filter_widget.dart';

class FilterWidget extends StatelessWidget {
  final VoidCallback applyFilters;

  final InstrumentFilter currentFilters;

  FilterWidget({Key? key, required this.applyFilters, required this.currentFilters}) : super(key: key);

  void filterCategory({required bool selected, InstrumentCategory? category, InstrumentRiskGrade? risk }) {
    if(selected) {
      currentFilters.addFilter(category: category, risk: risk);
    } else {
      currentFilters.removeFilter(category: category, risk: risk);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SectionTitle(text: "Categorias",),

          Row(children: [
            ChipFilterWidget(
              isSelected: currentFilters.categories.contains(InstrumentCategory.FIXEDINCOME),
              label: "Renda Fixa",
              onPressed: (selected) {
                 filterCategory(selected: selected, category: InstrumentCategory.FIXEDINCOME);
              },
            ),
            ChipFilterWidget(
                isSelected: currentFilters.categories.contains(InstrumentCategory.VARIABLEINCOME),
                label: "Renda Variável",
                onPressed: (selected) {
                  filterCategory(selected: selected, category: InstrumentCategory.VARIABLEINCOME);
                }),
            ChipFilterWidget(
                isSelected: currentFilters.categories.contains(InstrumentCategory.OTHERS),
                label: "Outros",
                onPressed: (selected) {
                  filterCategory(selected: selected, category: InstrumentCategory.OTHERS);
                }),
          ],),

          SectionTitle(text: "Nível de Risco",),

          Row(children: [
            ChipFilterWidget(
              isSelected: currentFilters.risks.contains(InstrumentRiskGrade.LOW),
              label: InstrumentRiskGrade.LOW.toStringText(),
              onPressed: (selected) {
                filterCategory(selected: selected, risk: InstrumentRiskGrade.LOW);
              },),
            ChipFilterWidget(
                isSelected: currentFilters.risks.contains(InstrumentRiskGrade.MEDIUM),
                label: InstrumentRiskGrade.MEDIUM.toStringText(),
                onPressed: (selected) {
                  filterCategory(selected: selected, risk: InstrumentRiskGrade.MEDIUM);
                }),
            ChipFilterWidget(
                isSelected: currentFilters.risks.contains(InstrumentRiskGrade.HIGH),
                label: InstrumentRiskGrade.HIGH.toStringText(),
                onPressed: (selected) {
                  filterCategory(selected: selected, risk: InstrumentRiskGrade.HIGH);
                }),
          ],),

          MaterialButton(onPressed: () {
            applyFilters();
          }, child: Text("Filtrar"),)
        ],
      ),
    );
  }
}
