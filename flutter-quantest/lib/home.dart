import 'package:QuanTest/about.dart';
import 'package:QuanTest/story.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:QuanTest/quizpage.dart';
import 'dart:ui' as ui;

class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  List<String> images = [
    "images/qtest.png",
    "images/qgate.png",
    "images/qiskit.png",
    "images/qml.png",
    "images/about.png",
  ];

  List<String> des = [
    "QuanTest Hikayesi\n",
    "Mantıksal devre tasarımında bulunan klasik kapılara alternatiftir. Amaç, elektronik devrelerin karar mekanizmasında quantum teknolojisini kullanmaktır.\n",
    "Kuantum programları oluşturmak ve degistirmek ve bunları kuantum cihazlarında veya yerel bir bilgisayardaki simülatörlerde çalıstırmak için araçlar saglar.\n",
    "Kuantum teknolojisini barındıran prensipler ve alanlar\n",
    "QuanTeam\n",
  ];

  Widget customcard(String langname, String image, String des) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 20.0,
        horizontal: 30.0,
      ),
      child: InkWell(
        onTap: () {
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            // in changelog 1 we will pass the langname name to ther other widget class
            // this name will be used to open a particular JSON file
            // for a particular language
            builder: (context) => getjson(langname),
          ));
        },
        child: Material(
          color: Colors.amberAccent[700],
          shadowColor: Colors.deepPurple,
          elevation: 10.0,
          borderRadius: BorderRadius.circular(25.0),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 10.0,
                  ),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(100.0),
                    child: Container(
                      // changing from 200 to 150 as to look better
                      height: 150.0,
                      width: 150.0,
                      child: ClipOval(
                        child: Image(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            image,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    langname,

                    style: TextStyle(
                        fontSize: 26,
                        foreground: Paint()
                          ..shader = ui.Gradient.linear(
                            const Offset(0, 50),
                            const Offset(150, 20),
                            <Color>[
                              Colors.deepOrange,
                              Colors.deepPurple,
                            ],
                          )),
                    // langname,
                    //style: TextStyle(
                    // fontSize: 20.0,
                    //color: Colors.white,
                    //fontFamily: "Quando",
                    // fontWeight: FontWeight.w700,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    des,
                    style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black87,
                        fontFamily: "Alike"),
                    maxLines: 5,
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Center(
          child: Text(
            "QuanTest",
            style: TextStyle(
              fontFamily: "Quando",
              color: Colors.amber,
            ),
          ),
        ),
      ),
      body: Container(
        color: Colors.black87,
        child: ListView(
          children: <Widget>[
            OutlineButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => storyPage(),
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
            customcard("Quantum Mantık Kapıları", images[1], des[1]),
            customcard("Qiskit", images[2], des[2]),
            customcard("Kuantum Çalışma Alanları", images[3], des[3]),
            OutlineButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => aboutPage(),
                ));
              },
              child: Container(
                height: 150.0,
                width: 150.0,
                child: ClipOval(
                  child: Image.asset(
                    "images/about.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
