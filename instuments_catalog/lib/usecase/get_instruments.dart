
import 'package:datasource/instruments/instrument_repository.dart';
import 'package:datasource/models/instrument.dart';

class GetInstruments {
  final InstrumentRepository repository;

  GetInstruments(this.repository);

  List<Instrument> execute() {
    return repository.getInstruments();
  }

}