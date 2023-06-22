import 'package:flutter/material.dart';
import 'package:portifolio/src/core/ui/theme/theme_config.dart';
import 'package:portifolio/src/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Allan Teles dos Santos',
      theme: ThemeConfig.lightTheme,
      darkTheme: ThemeConfig.darkTheme,
      themeMode: ThemeMode.light,
      home: const HomePage(),

    );
  }
}
