// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'First App',
      home: Home(),
    );
  }
}

// ignore: use_key_in_widget_constructors
class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
    int number = 0;
    void increaseNum(){
      setState(() {
        number++;
      });
    }
    void decreaseNum(){
      setState(() {
        number--;
      });
    }
    void resetNum(){
      setState(() {
        number = 0;
      });
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text("Tap to Score"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        child:  Icon(
          Icons.restore_outlined,
        ),
        onPressed: resetNum,
      ),
      body: Column(
        children: [
           SizedBox(
            height: 30,
          ),
           Center(
            child: Text(
              "Total Score:",
              style: TextStyle(
                color: Colors.red,
                fontSize: 28,
              ),
            ),
          ),
           Center(
            child: Text(
              number.toString(),
              style: TextStyle(
                color: Colors.purple,
                fontSize: 50,
              ),
            ),
          ),
           SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                 shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0)
              ),
                color: Colors.green,
                child: Text(
                  "Increase",
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
                onPressed: increaseNum,
              ),
               SizedBox(
                width: 20,
              ),
              RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0)
              ),
                color: Colors.red,
                child: Text(
                  "Decrease",
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
                onPressed: decreaseNum,
              ),
            ],
          )
        ],
      ),
    );
  }
}
