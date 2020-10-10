import 'package:flutter/material.dart';
import 'package:QuanTest/home.dart';

class resultpage extends StatefulWidget {
  int marks;
  resultpage({Key key, @required this.marks}) : super(key: key);
  @override
  _resultpageState createState() => _resultpageState(marks);
}

class _resultpageState extends State<resultpage> {
  List<String> images = [
    "images/success.png",
    "images/good.png",
    "images/bad.png",
  ];

  String message;
  String image;

  @override
  void initState() {
    if (marks < 20) {
      image = images[2];
      message = "Manyetikler tarafından \n yenilgiye uğratıldın \n" +
          "          Skorun $marks";
    } else if (marks < 35) {
      image = images[1];
      message = "Daha iyisini yapabilirsin\n" + "       Skorun $marks";
    } else {
      image = images[0];
      message = "Muhteşem Dr. Quantum\n" + "      Skorun   $marks";
    }
    super.initState();
  }

  int marks;
  _resultpageState(this.marks);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Center(
          child: Text(
            "Result",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: "Quando",
              color: Colors.amber,
            ),
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 8,
            child: Material(
              elevation: 10.0,
              child: Container(
                color: Colors.amber,
                child: Column(
                  children: <Widget>[
                    Material(
                      child: Container(
                        color: Colors.amber,
                        width: 300.0,
                        height: 300.0,
                        child: ClipRect(
                          child: Image(
                            image: AssetImage(
                              image,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 5.0,
                          horizontal: 15.0,
                        ),
                        child: Center(
                          child: Text(
                            message,
                            style: TextStyle(
                              fontSize: 18.0,
                              fontFamily: "Quando",
                            ),
                          ),
                        )),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                OutlineButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => homepage(),
                    ));
                  },
                  child: Text(
                    "Continue",
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white,
                    ),
                  ),
                  padding: EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 25.0,
                  ),
                  borderSide: BorderSide(width: 3.0, color: Colors.white),
                  splashColor: Colors.amber,
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0)),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
