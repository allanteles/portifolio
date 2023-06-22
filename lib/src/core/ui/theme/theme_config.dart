import 'package:flutter/material.dart';
import 'package:portifolio/src/core/ui/theme/styles/color_schemes.g.dart';
import 'package:portifolio/src/core/ui/theme/styles/colors_styles.dart';

class ThemeConfig {
  ThemeConfig._();

  static final lightTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: Colors.white,
    colorScheme: lightColorScheme,
        textTheme:  TextTheme(
      titleLarge: TextStyle(fontSize: 33, fontWeight: FontWeight.w700, color: lightColorScheme.primary),
      titleMedium: TextStyle(fontSize: 22, fontWeight: FontWeight.w500, color: lightColorScheme.primary),
      titleSmall: TextStyle(fontSize: 14, fontWeight: FontWeight.w300, color: lightColorScheme.primary),
    )
  );

  static final darkTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: const Color.fromRGBO(27, 27, 31, 0),
    colorScheme: darkColorScheme,
    textTheme:  TextTheme(
      titleLarge: TextStyle(fontSize: 33, fontWeight: FontWeight.w700, color: darkColorScheme.primary),
      titleMedium: TextStyle(fontSize: 22, fontWeight: FontWeight.w500, color: darkColorScheme.primary),
      titleSmall: TextStyle(fontSize: 14, fontWeight: FontWeight.w300, color: darkColorScheme.primary),
    )
    
  );
}
