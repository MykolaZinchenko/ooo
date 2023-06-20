import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 255, 255, 0.9),
        title: Padding(
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
            padding: EdgeInsets.only(right: 16.06),
            child: TextButton(
              onPressed: () {
                //хуйня будт работать
              },
              child: Text(
                'Create',
                style: TextStyle(
                  color: Color.fromRGBO(152, 154, 166, 1),
                ),
              ),
            ),
          ),
        ],
      ),
      body: Container(
        child: Text('соси хуй ярославЧИК'),
      ),
    );
  }
}
