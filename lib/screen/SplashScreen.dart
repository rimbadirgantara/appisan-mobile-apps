// ignore_for_file: file_names, use_key_in_widget_constructors, camel_case_types, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class splash_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(scaffoldBackgroundColor: const Color(0xFF3691AE)),
        home: Scaffold(
            body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image(
                  image: AssetImage('assets/images/logoApl.png'),
                  height: 201,
                  width: 232,
                ),
                Text(
                  "APPISAN",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 35.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w900),
                )
              ],
            ),
          ),
        )));
  }
}
