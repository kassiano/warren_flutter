
import 'package:core_ui/themes/app_colors.dart';
import 'package:core_ui/widgets/section_title.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:instuments_catalog/extentions/instrument_category_extentions.dart';
import 'instrument_card_widget.dart';
import 'package:datasource/models/instrument.dart';

class InstrumentListWidget extends StatelessWidget {

  final List<Instrument> instruments;

  const InstrumentListWidget({Key? key, required this.instruments}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GroupedListView<Instrument, String>(
      elements: instruments,
      groupBy: (element) => element.category.toStringText(),
      groupSeparatorBuilder: (String groupByValue) => Container(
        height: 24,
        child: SectionTitle(text: groupByValue)
      ),
      itemBuilder: (context, Instrument element) => InstrumentCardWidget(instrument: element,),
      itemComparator: (item1, item2) => item1.instrumentDetailApiId.compareTo(item2.instrumentDetailApiId), // optional
      useStickyGroupSeparators: true, // optional
      floatingHeader: false, // optional
      // optional
    );

      ListView.builder(
      itemBuilder: (context, position) => InstrumentCardWidget(instrument: instruments[position],),
      itemCount: instruments.length,
    );
  }
}
