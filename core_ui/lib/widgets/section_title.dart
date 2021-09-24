

import 'package:core_ui/themes/app_colors.dart';
import 'package:core_ui/themes/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SectionTitle extends StatelessWidget {
  final String text;
  final Color? color;
  const SectionTitle({Key? key, required this.text, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      child: Text(text, style: GoogleFonts.montserrat(
        fontSize: 18,
        fontWeight: FontWeight.w700,
        color: color ?? AppColors.textPrimaryLight,
      ),),
    );
  }
}
