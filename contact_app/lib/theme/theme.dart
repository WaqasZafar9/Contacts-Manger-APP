import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final lightTheme = FlexThemeData.light(
  scheme: FlexScheme.blueWhale,
  surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
  blendLevel: 9,
  subThemesData: const FlexSubThemesData(
    inputDecoratorRadius: 40.0,
    inputDecoratorUnfocusedHasBorder: false,
    fabUseShape: true,
    chipRadius: 40.0,
    navigationBarLabelBehavior:
    NavigationDestinationLabelBehavior.onlyShowSelected,
    appBarCenterTitle: true,
  ),
  keyColors: const FlexKeyColors(
    useSecondary: true,
    useTertiary: true,
  ),
  visualDensity: FlexColorScheme.comfortablePlatformDensity,
  fontFamily: GoogleFonts.mulish().fontFamily,
);
final darkTheme = FlexThemeData.dark(
  scheme: FlexScheme.blueWhale,
  surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
  blendLevel: 10,
  appBarStyle: FlexAppBarStyle.surface,
  subThemesData: const FlexSubThemesData(
    inputDecoratorRadius: 40.0,
    inputDecoratorUnfocusedHasBorder: false,
    fabUseShape: true,
    chipRadius: 40.0,
    navigationBarLabelBehavior:
    NavigationDestinationLabelBehavior.onlyShowSelected,
    appBarCenterTitle: true,
  ),
  keyColors: const FlexKeyColors(
    useSecondary: true,
    useTertiary: true,
  ),
  visualDensity: FlexColorScheme.comfortablePlatformDensity,
  fontFamily: GoogleFonts.mulish().fontFamily,
);

const inputPadding = EdgeInsets.all(14);