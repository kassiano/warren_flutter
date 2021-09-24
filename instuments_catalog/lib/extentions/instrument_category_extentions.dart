
import 'package:datasource/models/instrument_category.dart';

extension InstrumentCategoryExtensions on InstrumentCategory {
  String toStringText() {
    switch(this) {
      case InstrumentCategory.VARIABLEINCOME:
        return "Renda Variável";
      case InstrumentCategory.FIXEDINCOME:
        return "Renda Fixa";
      case InstrumentCategory.OTHERS:
        return "Outros";
    }
  }

}