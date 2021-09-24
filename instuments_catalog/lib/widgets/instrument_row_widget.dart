
import 'package:core_ui/themes/text_styles.dart';
import 'package:flutter/material.dart';

class InstrumentRowWidget extends StatelessWidget {
  final String leftText;
  final String rigthText;

  const InstrumentRowWidget({Key? key, required this.leftText, required this.rigthText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.only(top: 8),
      child: Row(
        children: [
          Expanded(child: Text(leftText, style: TextStyles.infoSecondary, )),
          Expanded(
              child: Text(
                rigthText,
                style: TextStyles.infoPrimary,
                textAlign: TextAlign.end,
              )
          ),
        ],
      ),
    );
  }
}
