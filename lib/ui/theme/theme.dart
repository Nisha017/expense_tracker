import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static final appLightTheme = FlexThemeData.light(
    colors: const FlexSchemeColor(
      primary: Color(0xff383874),
      primaryContainer: Color(0xffc8c8d9),
      secondary: Color(0xffff708b),
      secondaryContainer: Color(0xffffe2e8),
      tertiary: Color(0xff8676ff),
      tertiaryContainer: Color(0xffe9e6ff),
      appBarColor: Color(0xffffe2e8),
      error: Color(0xffb00020),
    ),
    surfaceMode: FlexSurfaceMode.highScaffoldLowSurface,
    blendLevel: 14,
    appBarStyle: FlexAppBarStyle.material,
    appBarOpacity: 0.95,
    subThemesData: const FlexSubThemesData(
      defaultRadius: 10,
      useFlutterDefaults: true,
      inputDecoratorIsFilled: false,
    ),
    useMaterial3ErrorColors: true,
    visualDensity: FlexColorScheme.comfortablePlatformDensity,
    useMaterial3: true,
    // To use the playground font, add GoogleFonts package and uncomment
    fontFamily: GoogleFonts.ibmPlexSans().fontFamily,
  );
  static final appDarkTheme = FlexThemeData.dark(
    colors: const FlexSchemeColor(
      primary: Color(0xff9fc9ff),
      primaryContainer: Color(0xff00325b),
      secondary: Color(0xffffb59d),
      secondaryContainer: Color(0xff872100),
      tertiary: Color(0xff86d2e1),
      tertiaryContainer: Color(0xff004e59),
      appBarColor: Color(0xff872100),
      error: Color(0xffcf6679),
    ),
    surfaceMode: FlexSurfaceMode.highScaffoldLowSurface,
    blendLevel: 15,
    appBarStyle: FlexAppBarStyle.background,
    appBarOpacity: 0.90,
    subThemesData: const FlexSubThemesData(
      useFlutterDefaults: true,
      blendOnLevel: 30,
      inputDecoratorIsFilled: false,
    ),
    useMaterial3ErrorColors: true,
    visualDensity: FlexColorScheme.comfortablePlatformDensity,
    useMaterial3: true,
    // To use the playground font, add GoogleFonts package and uncomment
    fontFamily: GoogleFonts.lato().fontFamily,
  );
// If you do not have a themeMode switch, uncomment this line
// to let the device system mode control the theme mode:
// themeMode: ThemeMode.system,
}
