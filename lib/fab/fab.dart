

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(FabDemo());

}

class FabDemo extends StatefulWidget {
  @override
  _FabDemoState createState() => _FabDemoState();
}

class _FabDemoState extends State<FabDemo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:  Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          backgroundColor: Colors.green,
          onPressed: (){

          },
        ),
      )
    );
/*      Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          Text('hi');
        },
      ),
    );*/
  }
}
