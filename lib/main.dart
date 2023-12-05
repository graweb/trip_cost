import 'package:flutter/material.dart';
import 'package:trip_cost/page/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trip Cost',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: const HomePage()
    );
  }
}
