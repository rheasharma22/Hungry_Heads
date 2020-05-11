import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Hungry Heads!"),
          backgroundColor: Colors.red[400],
        ),
        body: FindRestaurant(),
      ),
    ),
  );
}

class FindRestaurant extends StatefulWidget {
  @override
  _FindRestaurantState createState() => _FindRestaurantState();
}

class _FindRestaurantState extends State<FindRestaurant> {
  int num = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 17.0),
            child: Text(
              "Can't decide which restaurant to go to?",
              style: TextStyle(
                color: Colors.black,
                fontSize: 25.0,
              ),
            ),
          ),
          Container(
            color: Colors.red,
            child: FlatButton(
              onPressed: () {
                setState(() {
                  num = 0;
                });
              },
              child: Text(
                "Click here!",
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          FlatButton(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onPressed: () {
              setState(() {
                num = Random().nextInt(6) + 1;
              });
            },
            child: Image.asset(
              "images/image$num.png",
              width: 300.0,
              height: 300.0,
            ),
          ),
        ],
      ),
    );
  }
}
