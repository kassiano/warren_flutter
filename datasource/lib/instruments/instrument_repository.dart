

import 'dart:convert';

import '../models/instrument.dart';
import 'instruments_json.dart';


class InstrumentRepository {

  List<Instrument> getInstruments()  {

      final response = InstrumentsJson.json;

      Iterable instrumentsIterable = json.decode(response);

      return instrumentsIterable
          .map((e) => Instrument.fromMap(e))
          .toList();

  }

}