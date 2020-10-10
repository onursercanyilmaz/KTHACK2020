import 'package:flutter/material.dart';
import 'package:QuanTest/splash.dart';
import 'package:QuanTest/splash.dart';
import 'package:QuanTest/splash.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'QuanTest',
        theme: ThemeData(
          primarySwatch: Colors.amber,
        ),
        home: splashscreen(),
      ),
    );
  }
}
