import 'package:flutter/material.dart';
import 'package:ooo/presentation/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TODO App',
      theme: ThemeData(
        primaryColor: const Color.fromRGBO(255, 255, 255, 0.9),
        colorScheme: ThemeData().colorScheme.copyWith(
          secondary: const Color.fromRGBO(97, 120, 201, 1),
        ),
      ),
      home: HomePage(),
    );
  }
}
