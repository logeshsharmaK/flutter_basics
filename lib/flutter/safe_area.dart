


// this file Explain Safe Area

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyAppSafeArea());
}

class MyAppSafeArea extends StatefulWidget {
  @override
  _MyAppSafeAreaState createState() => _MyAppSafeAreaState();
}


//Safe area will calculate screen width and height and place the content.
// for both android and ios.
class _MyAppSafeAreaState extends State<MyAppSafeArea> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Text(' This is Safe Area Body'),
        ),
      ),
    );
  }
}
