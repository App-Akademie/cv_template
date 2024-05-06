import 'dart:ui';

import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final darkTheme = FlexThemeData.dark(
  colors: const FlexSchemeColor(
    primary: Color(0xff121212),
    primaryContainer: Color(0xffff9500),
    secondary: Color(0xff0028c3),
    secondaryContainer: Color.fromRGBO(255, 255, 255, 0.04),
    tertiary: Color(0xffffefd9),
    tertiaryContainer: Color(0xffFFC6A1),
    appBarColor: Color(0xff5E5E5D),
    error: Color(0xffcf6679),
  ),
  textTheme: GoogleFonts.interTextTheme().copyWith(
    titleLarge: GoogleFonts.inter(
      fontSize: 76,
      fontWeight: FontWeight.w700,
      color: const Color(0xffffefd9),
    ),
    titleMedium: GoogleFonts.inter(
      fontSize: 31,
      fontWeight: FontWeight.w600,
      color: const Color(0xffff9500),
    ),
    titleSmall: GoogleFonts.inter(
      fontSize: 31,
      fontWeight: FontWeight.w600,
      color: const Color(0xffffefd9),
    ),
    bodyMedium: GoogleFonts.inter(
      fontSize: 25,
      fontWeight: FontWeight.w500,
      color: const Color(0xffffefd9),
    ),
    bodyLarge: GoogleFonts.inter(
      fontSize: 25,
      fontWeight: FontWeight.w500,
      color: const Color(0xff121212),
    ),
    bodySmall: GoogleFonts.inter(
      fontSize: 20,
      fontWeight: FontWeight.w500,
      color: const Color(0xff5E5E5D),
    ),
    labelLarge: GoogleFonts.inter(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: const Color(0xff5E5E5D),
    ),
    labelMedium: GoogleFonts.inter(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: const Color(0xffff9500),
    ),
    labelSmall: GoogleFonts.inter(
      fontSize: 16,
      fontWeight: FontWeight.w800,
      color: const Color(0xffffefd9),
    ),
  ),
  surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
  blendLevel: 13,
  subThemesData: const FlexSubThemesData(
    blendOnLevel: 20,
    useTextTheme: true,
    useM2StyleDividerInM3: true,
    alignedDropdown: true,
    useInputDecoratorThemeInDialogs: true,
  ),
  visualDensity: FlexColorScheme.comfortablePlatformDensity,
  useMaterial3: true,
  swapLegacyOnMaterial3: true,
);
