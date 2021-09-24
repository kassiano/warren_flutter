
import 'package:animated_card/animated_card.dart';
import 'package:async/async.dart';
import 'package:core_ui/themes/app_colors.dart';
import 'package:core_ui/themes/text_styles.dart';
import 'package:datasource/models/instrument.dart';
import 'package:flutter/material.dart';
import 'package:instuments_catalog/pages/instruments_catalog_controller.dart';
import 'package:instuments_catalog/widgets/filter_widget.dart';
import 'package:instuments_catalog/widgets/instrument_list_widget.dart';
import 'instruments_catalog_controller_dependencies.dart';

class InstrumentsCatalog extends StatefulWidget {
  const InstrumentsCatalog({Key? key}) : super(key: key);

  @override
  _InstrumentsCatalogState createState() => _InstrumentsCatalogState();
}

class _InstrumentsCatalogState extends State<InstrumentsCatalog> {

  final controller = InstrumentsCatalogController(
      InstrumentsCatalogControllerDependencies.inject()
  );

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.brandPrimaryLight,
        title: Text("Produtos"),
        actions: [
          IconButton(onPressed: () {
             showModalBottomSheet(context: context, builder: (ctx) =>  Padding(
               padding: const EdgeInsets.all(16.0),
               child: FilterWidget(
                  currentFilters: controller.currentFilter,
                  applyFilters: () {
                    Navigator.pop(context);
                    controller.applyFilter();
                  },
               ),
             ),);
          }, icon: Icon(Icons.filter_alt))
        ],
      ),
      body: Container(
        color: AppColors.backgroundPrimaryLight,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ValueListenableBuilder<Result<List<Instrument>>?>(
            valueListenable: controller.instruments,
            builder: (_, result, __) {

              if(result?.isValue == true) {

                final instruments = result!.asValue!.value;

                 return  Column(
                   children: [

                     Container(
                         alignment: Alignment.topLeft,
                         child: Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Text("${instruments.length} produtos encontrados.", style: TextStyles.infoPrimary,),
                         )
                     ),

                     Expanded(child: AnimatedCard(
                         direction: AnimatedCardDirection.bottom,
                         child: InstrumentListWidget(instruments: instruments)
                     ))
                   ],
                 );
              } else if(result?.isError == true) {
                return Container(
                  child: Text("Erro"),
                );
              } else {
                return Center(
                  child: Container(
                    child: CircularProgressIndicator(),
                  ),
                );
              }

            },
          ),
        ),
      ),
    );

  }
}
