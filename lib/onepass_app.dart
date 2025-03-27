import 'package:flutter/material.dart';
import 'package:onepass/core/theming/theme.dart';
import 'package:onepass/presistent_bottom_navbar.dart';

class OnePassApp extends StatelessWidget {
  const OnePassApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      themeMode: ThemeMode.light,
      home: AppPresistentBottomNavBar(),
    );
  }
}
