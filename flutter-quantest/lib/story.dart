import 'package:QuanTest/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:QuanTest/quizpage.dart';
import 'dart:ui' as ui;

class storyPage extends StatefulWidget {
  @override
  _storyPageState createState() => _storyPageState();
}

class _storyPageState extends State<storyPage> {
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
            "QuanTest Hikayesi",
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
                    "Kuantum çekirdeğini ele geçirmek\n isteyen Manyetikler, gücünü \n kuatum çekirdeğinden alan \n QuanTest'i işgal etmişti.\n \n Dr. Quantum'un gezegeni\n kurtarmak için yapması gerekense\n testleri geçip\ngezegeni ve çekirdeği düşmanın elinden kurtarmalıydı.   ",
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
