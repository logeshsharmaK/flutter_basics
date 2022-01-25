

// this file contains Material App

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){

  runApp(MyAppMaterial());

}

class MyAppMaterial extends StatefulWidget {
  @override
  _MyAppMaterialState createState() => _MyAppMaterialState();
}

class _MyAppMaterialState extends State<MyAppMaterial> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Material App"),

        ),
        body: Text("this is the body for Material App"),
      ),
    );
  }
}
