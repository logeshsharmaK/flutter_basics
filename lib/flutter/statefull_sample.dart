

// this file contains StateFull Widget

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyAppForStateFull());
}


//Statefull can change over dynamically
//setState() triggers the Build Function and thus User interact with Ui.

class MyAppForStateFull extends StatefulWidget {
  @override
  _MyAppForStateFullState createState() => _MyAppForStateFullState();
}

class _MyAppForStateFullState extends State<MyAppForStateFull> {

  var name = "Test";

  void clickMe(){
    // setState() triggers the Build Function and thus User interact with Ui.
    setState(() {
     // runApp(MyAppForLifeCycle());
    });
  }

  @override
  void initState() {
    print("initState function statefull ---ran  ");
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    print("build function statefull ---ran ");
    return MaterialApp(
      home: Column(
        children: <Widget>[
          Text('$name'),
          FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: clickMe ,
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    print("dispose function statefull ---ran ");
    super.dispose();
  }
}

