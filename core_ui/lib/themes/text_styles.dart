
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class TextStyles {

  static final title = GoogleFonts.sourceSansPro(
    fontSize: 20,
    fontWeight: FontWeight.w400,
    color: AppColors.textPrimaryLight,
  );

  static final infoSecondary = GoogleFonts.sourceSansPro(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.textSecondaryLight,
  );

  static final infoPrimary = GoogleFonts.sourceSansPro(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.textPrimaryLight,
  );

  static final riskLow = GoogleFonts.sourceSansPro(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.statusPositiveLight,
  );

  static final riskMedium = GoogleFonts.sourceSansPro(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.statusAlertLight,
  );

  static final riskHigh = GoogleFonts.sourceSansPro(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.statusNegativeLight,
  );


}
