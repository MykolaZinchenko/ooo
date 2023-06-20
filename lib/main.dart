import 'package:flutter/material.dart';
import 'package:ooo/presentation/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TODO App',
      theme: ThemeData(
        primaryColor: Color.fromRGBO(255, 255, 255, 0.9),
        colorScheme: ThemeData().colorScheme.copyWith(
          secondary: Color.fromRGBO(97, 120, 201, 1),
        ),
      ),
      home: HomePage(),
    );
  }
}
