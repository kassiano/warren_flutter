
import 'package:datasource/models/instrument_category.dart';
import 'package:datasource/models/instrument_risk_grade.dart';

class InstrumentFilter {
  final List<InstrumentCategory> categories;
  final List<InstrumentRiskGrade> risks;


  void addFilter({ InstrumentCategory? category, InstrumentRiskGrade? risk } ) {
    if(category != null) {
      categories.add(category);
    }
    if(risk != null) {
      risks.add(risk);
    }
  }

  void removeFilter({ InstrumentCategory? category, InstrumentRiskGrade? risk } ) {
    if(category != null) {
      categories.remove(category);
    }
    if(risk != null) {
      risks.remove(risk);
    }
  }

  bool filterCategories(InstrumentCategory element) {
    if(categories.isEmpty) {
      return true;
    } else {
      return categories.contains(element);
    }
  }

  bool filterRisks(InstrumentRiskGrade element) {
    if(risks.isEmpty) {
      return true;
    } else {
      return risks.contains(element);
    }
  }

//<editor-fold desc="Data Methods">

  const InstrumentFilter({
    required this.categories,
    required this.risks,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is InstrumentFilter &&
          runtimeType == other.runtimeType &&
          categories == other.categories &&
          risks == other.risks);

  @override
  int get hashCode => categories.hashCode ^ risks.hashCode;

  @override
  String toString() {
    return 'InstrumentFilter{' +
        ' categories: $categories,' +
        ' risks: $risks,' +
        '}';
  }

  InstrumentFilter copyWith({
    List<InstrumentCategory>? categories,
    List<InstrumentRiskGrade>? risks,
  }) {
    return InstrumentFilter(
      categories: categories ?? this.categories,
      risks: risks ?? this.risks,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'categories': this.categories,
      'risks': this.risks,
    };
  }

  factory InstrumentFilter.fromMap(Map<String, dynamic> map) {
    return InstrumentFilter(
      categories: map['categories'] as List<InstrumentCategory>,
      risks: map['risks'] as List<InstrumentRiskGrade>,
    );
  }

//</editor-fold>
}