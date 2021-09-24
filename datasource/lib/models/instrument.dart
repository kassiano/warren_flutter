
import 'package:enum_to_string/enum_to_string.dart';

import 'formattable.dart';
import 'instrument_category.dart';
import 'instrument_risk_grade.dart';
import 'package:siberia/primitives/string_extensions.dart';

class Instrument {
  final String instrumentBoxApiId;
  final InstrumentCategory category;
  final String subCategory;
  final String instrumentDetailApiId;
  final String name;
  final double minimumFinancialMovement;
  final double minimumInitialInvestment;
  final InstrumentRiskGrade riskGrade;
  final double lastTwelveMonthsInterestRate;
  final int daysToLiquidationAtWithdraw;
  final String daysToExpiration;
  final Formattable<String> liquidity;
  final String profitability;

//<editor-fold desc="Data Methods">

  const Instrument({
    required this.instrumentBoxApiId,
    required this.category,
    required this.subCategory,
    required this.instrumentDetailApiId,
    required this.name,
    required this.minimumFinancialMovement,
    required this.minimumInitialInvestment,
    required this.riskGrade,
    required this.lastTwelveMonthsInterestRate,
    required this.daysToLiquidationAtWithdraw,
    required this.daysToExpiration,
    required this.liquidity,
    required this.profitability,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Instrument &&
          runtimeType == other.runtimeType &&
          instrumentBoxApiId == other.instrumentBoxApiId &&
          category == other.category &&
          subCategory == other.subCategory &&
          instrumentDetailApiId == other.instrumentDetailApiId &&
          name == other.name &&
          minimumFinancialMovement == other.minimumFinancialMovement &&
          minimumInitialInvestment == other.minimumInitialInvestment &&
          riskGrade == other.riskGrade &&
          lastTwelveMonthsInterestRate == other.lastTwelveMonthsInterestRate &&
          daysToLiquidationAtWithdraw == other.daysToLiquidationAtWithdraw &&
          daysToExpiration == other.daysToExpiration &&
          liquidity == other.liquidity &&
          profitability == other.profitability);

  @override
  int get hashCode =>
      instrumentBoxApiId.hashCode ^
      category.hashCode ^
      subCategory.hashCode ^
      instrumentDetailApiId.hashCode ^
      name.hashCode ^
      minimumFinancialMovement.hashCode ^
      minimumInitialInvestment.hashCode ^
      riskGrade.hashCode ^
      lastTwelveMonthsInterestRate.hashCode ^
      daysToLiquidationAtWithdraw.hashCode ^
      daysToExpiration.hashCode ^
      liquidity.hashCode ^
      profitability.hashCode;

  @override
  String toString() {
    return 'InstrumentsResponse{' +
        ' instrumentBoxApiId: $instrumentBoxApiId,' +
        ' category: $category,' +
        ' subCategory: $subCategory,' +
        ' instrumentDetailApiId: $instrumentDetailApiId,' +
        ' name: $name,' +
        ' minimumFinancialMovement: $minimumFinancialMovement,' +
        ' minimumInitialInvestment: $minimumInitialInvestment,' +
        ' riskGrade: $riskGrade,' +
        ' lastTwelveMonthsInterestRate: $lastTwelveMonthsInterestRate,' +
        ' daysToLiquidationAtWithdraw: $daysToLiquidationAtWithdraw,' +
        ' daysToExpiration: $daysToExpiration,' +
        ' liquidity: $liquidity,' +
        ' profitability: $profitability,' +
        '}';
  }

  Instrument copyWith({
    String? instrumentBoxApiId,
    InstrumentCategory? category,
    String? subCategory,
    String? instrumentDetailApiId,
    String? name,
    double? minimumFinancialMovement,
    double? minimumInitialInvestment,
    InstrumentRiskGrade? riskGrade,
    double? lastTwelveMonthsInterestRate,
    int? daysToLiquidationAtWithdraw,
    String? daysToExpiration,
    Formattable<String>? liquidity,
    String? profitability,
  }) {
    return Instrument(
      instrumentBoxApiId: instrumentBoxApiId ?? this.instrumentBoxApiId,
      category: category ?? this.category,
      subCategory: subCategory ?? this.subCategory,
      instrumentDetailApiId:
          instrumentDetailApiId ?? this.instrumentDetailApiId,
      name: name ?? this.name,
      minimumFinancialMovement:
          minimumFinancialMovement ?? this.minimumFinancialMovement,
      minimumInitialInvestment:
          minimumInitialInvestment ?? this.minimumInitialInvestment,
      riskGrade: riskGrade ?? this.riskGrade,
      lastTwelveMonthsInterestRate:
          lastTwelveMonthsInterestRate ?? this.lastTwelveMonthsInterestRate,
      daysToLiquidationAtWithdraw:
          daysToLiquidationAtWithdraw ?? this.daysToLiquidationAtWithdraw,
      daysToExpiration: daysToExpiration ?? this.daysToExpiration,
      liquidity: liquidity ?? this.liquidity,
      profitability: profitability ?? this.profitability,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'instrumentBoxApiId': this.instrumentBoxApiId,
      'category': this.category,
      'subCategory': this.subCategory,
      'instrumentDetailApiId': this.instrumentDetailApiId,
      'name': this.name,
      'minimumFinancialMovement': this.minimumFinancialMovement,
      'minimumInitialInvestment': this.minimumInitialInvestment,
      'riskGrade': this.riskGrade,
      'lastTwelveMonthsInterestRate': this.lastTwelveMonthsInterestRate,
      'daysToLiquidationAtWithdraw': this.daysToLiquidationAtWithdraw,
      'daysToExpiration': this.daysToExpiration,
      'liquidity': this.liquidity,
      'profitability': this.profitability,
    };
  }

  factory Instrument.fromMap(Map<String, dynamic> map) {
    return Instrument(
      instrumentBoxApiId: map['instrumentBoxApiId'] as String,
      category: EnumToString.fromString(InstrumentCategory.values, map['category'])!,
      subCategory: map['subCategory'] as String,
      instrumentDetailApiId: map['instrumentDetailApiId'] as String,
      name: map['name'] as String,
      minimumFinancialMovement: map['minimumFinancialMovement'].toString().toDouble() ,
      minimumInitialInvestment: map['minimumInitialInvestment'].toString().toDouble(),
      riskGrade: EnumToString.fromString(InstrumentRiskGrade.values,  map['riskGrade'])!,
      lastTwelveMonthsInterestRate:
          map['lastTwelveMonthsInterestRate'].toString().toDouble(),
      daysToLiquidationAtWithdraw: map['daysToLiquidationAtWithdraw'] as int,
      daysToExpiration: map['daysToExpiration'].toString(),
      liquidity: Formattable<String>(formatted: map['liquidity']['formatted']),
      profitability: map['profitability'] as String,
    );
  }

//</editor-fold>
}
