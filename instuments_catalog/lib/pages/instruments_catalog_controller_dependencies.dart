
import 'package:instuments_catalog/usecase/get_instruments.dart';
import 'package:datasource/instruments/instrument_repository.dart';

class InstrumentsCatalogControllerDependencies {

    static GetInstruments inject() {
      final respository = InstrumentRepository();
      return GetInstruments(respository);
  }

}