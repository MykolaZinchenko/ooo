import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(255, 255, 255, 0.9),
        title: const Padding(
          padding: EdgeInsets.only(left: 16.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'TODO App',
              style: TextStyle(
                color: Color.fromRGBO(109, 110, 114, 1),
                fontFamily: 'Impact',
                fontSize: 22.0,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
        actions: [
          Container(
            padding: const EdgeInsets.only(right: 16.06),
            child: TextButton(
              onPressed: () {
                //хуйня будт работать
              },
              child: const Text(
                'Create',
                style: TextStyle(
                  color: Color.fromRGBO(152, 154, 166, 1),
                ),
              ),
            ),
          ),
        ],
      ),
      body: const Text('соси хуй ярославЧИК'),
    );
  }
}
