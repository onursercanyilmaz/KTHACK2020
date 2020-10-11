import 'package:QuanTest/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:QuanTest/quizpage.dart';
import 'dart:ui' as ui;

class aboutPage extends StatefulWidget {
  @override
  _aboutPageState createState() => _aboutPageState();
}

class _aboutPageState extends State<aboutPage> {
  List<String> images = [
    "images/qtest.png",
    "images/qgate.png",
    "images/qiskit.png",
    "images/qml.png",
    "images/about.png",
  ];

  List<String> des = [
    "sssss\n",
    "Kuantum Matık Kapıları\n",
    "Qiskit\n",
    "Quantum Makine Öğrenmesi\n",
    "QuanTeam\n",
  ];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Center(
          child: Text(
            "Hakkında",
            style: TextStyle(
              fontFamily: "Quando",
              color: Colors.amber,
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Container(
            color: Colors.black87,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Center(
                  child: Text(
                    "QuanTest, QTurkey'in düzenlemiş olduğu KTHACK 2020 kapsamında QUANTEAM ekibi tarafından hazırlanmıştır. Amacı Kuantum teknolojilerini insanlara daha iyi öğretip tanıtabilmek ve akılda kalıcı olmasını sağlamaktır.\n \nEkip Üyeleri:\n\n Onur Sercan Yılmaz\nMohamed Elazab\nDeniz Altınok\n ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "Quando",
                      fontSize: 20,
                      color: Colors.amber,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3.5,
                    ),
                  ),
                ),
                OutlineButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => homepage(),
                    ));
                  },
                  child: Container(
                    height: 150.0,
                    width: 150.0,
                    child: ClipOval(
                      child: Image.asset(
                        "images/qtest.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
