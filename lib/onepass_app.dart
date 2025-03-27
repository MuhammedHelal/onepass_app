import 'package:flutter/material.dart';
import 'package:onepass/presistent_bottom_navbar.dart';

class OnePassApp extends StatelessWidget {
  const OnePassApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: AppPresistentBottomNavBar(),
    );
  }
}
