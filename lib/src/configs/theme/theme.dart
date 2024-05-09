import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:passguard/src/core/app.dart';
import 'package:passguard/src/core/utils/enums.dart';
import 'package:passguard/src/configs/theme/colors.dart';

class ThemeApp {
  static const String _fontFamily = 'OpenSans';
  static const double _appBarThemeTitleTextStyleFontSize = 16;

  static TextTheme get textTheme {
    double scale = 1;

    return TextTheme(
        displayLarge: TextStyle(fontSize: 57 * scale, letterSpacing: 0),
        displayMedium: TextStyle(fontSize: 45 * scale, letterSpacing: 0),
        displaySmall: TextStyle(fontSize: 36 * scale, letterSpacing: 0),
        headlineLarge: TextStyle(fontSize: 32 * scale, letterSpacing: 0),
        headlineMedium: TextStyle(fontSize: 28 * scale, letterSpacing: 0),
        headlineSmall: TextStyle(fontSize: 24 * scale, letterSpacing: 0),
        titleLarge: TextStyle(
            fontSize: 22 * scale,
            fontWeight: FontWeight.w600,
            letterSpacing: 0),
        titleMedium: TextStyle(
            fontSize: 16 * scale,
            fontWeight: FontWeight.w600,
            letterSpacing: 0),
        titleSmall: TextStyle(
            fontSize: 14 * scale,
            fontWeight: FontWeight.w600,
            letterSpacing: 0),
        labelLarge: TextStyle(
            fontSize: 14 * scale,
            fontWeight: FontWeight.w600,
            letterSpacing: 0),
        labelMedium: TextStyle(
            fontSize: 12 * scale,
            fontWeight: FontWeight.w600,
            letterSpacing: 0),
        labelSmall: TextStyle(
            fontSize: 11 * scale,
            fontWeight: FontWeight.w600,
            letterSpacing: 0),
        bodyLarge: TextStyle(fontSize: 16 * scale, letterSpacing: 0),
        bodyMedium: TextStyle(fontSize: 14 * scale, letterSpacing: 0),
        bodySmall: TextStyle(fontSize: 12 * scale, letterSpacing: 0));
  }

  static ThemeData get _darkMode => ThemeData(
    extensions: [
      ThemeModeColors(
          colorWhiteBorder: Colors.transparent,
          barrierColorModalBottom: Colors.black.withOpacity(.9),
          bgContainer: const Color(0xFF1B1B1C),
          progressIndicator: const Color(0xFFFCFCFC),
          primaryButtonBackgroundColor: const Color(0xFF333336),
          primaryButtonTextColor: Colors.white,
          textFieldBackground: const Color(0xFF2F2F32),
          mainTextColor: const Color(0xFFF5F5F5),
          transitiveDarkBackgroundGradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              const Color(0xFF161617).withOpacity(0.0),
              const Color(0xFF161617)
            ],
          ),
          approvedGreen: const Color(0xFF2E7255),
          rejectedRed: const Color(0xFF742929)),
    ],
    hintColor: Colors.white54,
    useMaterial3: false,
    progressIndicatorTheme:
    const ProgressIndicatorThemeData(color: Color(0xFFFCFCFC)),
    fontFamily: _fontFamily,
    scaffoldBackgroundColor: const Color(0xFF161617),
    brightness: Brightness.dark,
    textTheme: textTheme.apply(
      bodyColor: const Color(0xFFF5F5F5),
      displayColor: const Color(0xFFF5F5F5),
    ),
    appBarTheme: const AppBarTheme(
        titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: _appBarThemeTitleTextStyleFontSize),
        foregroundColor: Colors.white,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        shadowColor: Colors.transparent,
        color: Colors.transparent),
  );

  static ThemeData get _lightMode => ThemeData(
      extensions: [
        ThemeModeColors(
            colorWhiteBorder: Colors.black,
            barrierColorModalBottom: Colors.white.withOpacity(.9),
            bgContainer: Colors.white,
            progressIndicator: CustomColors.black70,
            primaryButtonBackgroundColor: const Color(0xFFEDEDED),
            primaryButtonTextColor: Colors.black87,
            textFieldBackground: const Color(0xFFEDEDED),
            mainTextColor: const Color(0xFF303030),
            transitiveDarkBackgroundGradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.white.withOpacity(0.0), Colors.white]),
            approvedGreen: const Color(0xFFCDF2B7),
            rejectedRed: const Color(0xFFF4E5E1)),
      ],
      useMaterial3: false,
      hintColor: Colors.black54,
      progressIndicatorTheme:
      const ProgressIndicatorThemeData(color: CustomColors.black70),
      fontFamily: _fontFamily,
      scaffoldBackgroundColor: const Color(0xFFf7f7f7),
      brightness: Brightness.light,
      textTheme: textTheme.apply(
        bodyColor: const Color(0xFF303030),
        displayColor: const Color(0xFF303030),
      ),
      appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(
              color: Colors.black,
              fontSize: _appBarThemeTitleTextStyleFontSize),
          foregroundColor: Colors.black,
          systemOverlayStyle: SystemUiOverlayStyle.dark,
          shadowColor: Colors.transparent,
          color: Colors.transparent));

  static ThemeData get mode =>
      App.personalizationApp.themeMode == SettingThemeMode.dark
          ? _darkMode
          : _lightMode;
}

class ThemeModeColors extends ThemeExtension<ThemeModeColors> {
  Color barrierColorModalBottom;
  Color bgContainer;
  Color progressIndicator;
  Color primaryButtonBackgroundColor;
  Color primaryButtonTextColor;
  Color textFieldBackground;
  Color mainTextColor;
  Color colorWhiteBorder;
  Color approvedGreen;
  Color rejectedRed;
  LinearGradient transitiveDarkBackgroundGradient;

  ThemeModeColors(
      {required this.barrierColorModalBottom,
        required this.bgContainer,
        required this.progressIndicator,
        required this.primaryButtonBackgroundColor,
        required this.primaryButtonTextColor,
        required this.textFieldBackground,
        required this.mainTextColor,
        required this.transitiveDarkBackgroundGradient,
        required this.colorWhiteBorder,
        required this.approvedGreen,
        required this.rejectedRed});

  @override
  ThemeModeColors copyWith(
      {Color? barrierColorModalBottom,
        Color? bgContainer,
        Color? progressIndicator,
        Color? primaryButtonBackgroundColor,
        Color? primaryButtonTextColor,
        Color? textFieldBackground,
        Color? mainTextColor,
        Color? colorWhiteBorder,
        LinearGradient? transitiveDarkBackgroundGradient,
        Color? approvedGreen,
        Color? rejectedRed}) {
    return ThemeModeColors(
        colorWhiteBorder: colorWhiteBorder ?? this.colorWhiteBorder,
        barrierColorModalBottom:
        barrierColorModalBottom ?? this.barrierColorModalBottom,
        bgContainer: bgContainer ?? this.bgContainer,
        progressIndicator: progressIndicator ?? this.progressIndicator,
        primaryButtonBackgroundColor:
        primaryButtonBackgroundColor ?? this.primaryButtonBackgroundColor,
        primaryButtonTextColor:
        primaryButtonTextColor ?? this.primaryButtonTextColor,
        textFieldBackground: textFieldBackground ?? this.textFieldBackground,
        mainTextColor: mainTextColor ?? this.mainTextColor,
        transitiveDarkBackgroundGradient: transitiveDarkBackgroundGradient ??
            this.transitiveDarkBackgroundGradient,
        approvedGreen: approvedGreen ?? this.approvedGreen,
        rejectedRed: rejectedRed ?? this.rejectedRed);
  }

  @override
  ThemeModeColors lerp(ThemeModeColors? other, double t) {
    if (other is! ThemeModeColors) {
      return this;
    }
    return ThemeModeColors(
        barrierColorModalBottom:
        Color.lerp(barrierColorModalBottom, other.barrierColorModalBottom, t) ??
            barrierColorModalBottom,
        bgContainer:
        Color.lerp(bgContainer, other.bgContainer, t) ?? bgContainer,
        progressIndicator:
        Color.lerp(progressIndicator, other.progressIndicator, t) ??
            progressIndicator,
        primaryButtonBackgroundColor:
        Color.lerp(primaryButtonBackgroundColor, other.primaryButtonBackgroundColor, t) ??
            primaryButtonBackgroundColor,
        primaryButtonTextColor:
        Color.lerp(primaryButtonTextColor, other.primaryButtonTextColor, t) ??
            primaryButtonTextColor,
        textFieldBackground:
        Color.lerp(textFieldBackground, other.textFieldBackground, t) ??
            textFieldBackground,
        mainTextColor:
        Color.lerp(mainTextColor, other.mainTextColor, t) ?? mainTextColor,
        transitiveDarkBackgroundGradient: transitiveDarkBackgroundGradient,
        colorWhiteBorder: Color.lerp(colorWhiteBorder, other.colorWhiteBorder, t) ??
            colorWhiteBorder,
        approvedGreen:
        Color.lerp(approvedGreen, other.approvedGreen, t) ?? approvedGreen,
        rejectedRed: Color.lerp(rejectedRed, other.rejectedRed, t) ?? rejectedRed);
  }
}
