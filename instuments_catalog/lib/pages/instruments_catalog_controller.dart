
import 'package:async/async.dart';
import 'package:datasource/models/instrument_category.dart';
import 'package:datasource/models/instrument_risk_grade.dart';
import 'package:flutter/material.dart';
import 'package:instuments_catalog/pages/instrument_filter.dart';
import 'package:instuments_catalog/usecase/get_instruments.dart';
import 'package:datasource/models/instrument.dart';

class InstrumentsCatalogController {
  final GetInstruments getInstrumentsUseCase;

  final instruments = ValueNotifier<Result<List<Instrument>>?>(null);
  List<Instrument> instrumentsResult = <Instrument>[];

  var currentFilter = InstrumentFilter(categories: [], risks: []);

  InstrumentsCatalogController(this.getInstrumentsUseCase) {
     Future.delayed(const Duration(seconds: 2))
        .then((value) => _fetchInstruments());
  }

  void _fetchInstruments() {
    final result = Result(() => getInstrumentsUseCase.execute());
    instruments.value = result;

    instrumentsResult = result.asValue?.value ?? <Instrument>[];
  }

  void applyFilter() {
    instruments.value = null;
    print(currentFilter);

    if(currentFilter.categories.isEmpty && currentFilter.risks.isEmpty) {
      instruments.value = Result(() => instrumentsResult);
    } else {
      final result = Result(() => instrumentsResult.where((element) {
          return currentFilter.filterCategories(element.category) &&
              currentFilter.filterRisks(element.riskGrade);
        }
      ).toList());
      instruments.value = result;
    }
  }
}
