import 'package:celestial_app/Features/GuardianAngel/Views/home_page.dart';
import 'package:flutter/material.dart';

class CelestialApp extends StatelessWidget {
  const CelestialApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
