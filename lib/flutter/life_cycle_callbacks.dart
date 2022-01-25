

//this file explains how does Life Cycle Callbacks works in flutter
//    ----------------REFERENCE-------------------
//https://stackoverflow.com/questions/47501710/what-is-the-relation-between-stateful-and-stateless-widgets-in-flutter#:~:text=In%20Flutter%2C%20the%20difference%20is,with%20the%20same%20constructor%20arguments.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){

  runApp(MyAppForLifeCycle());
}

class MyAppForLifeCycle extends StatefulWidget {
  @override
  _MyAppForLifeCycleState createState() => _MyAppForLifeCycleState();
}

class _MyAppForLifeCycleState extends State<MyAppForLifeCycle> {

  var name = "logesh sharma";

  void clickMe(){
    setState(() {
      name = "Test";
    });
  }

  //this initState run for the very first time when the widget is created
  // -------------- reference for print vs debug print.
  //https://medium.com/@abhishekbedi/print-vs-debugprint-eac33a774d5a
  @override
  void initState() {
      print("initState Function --- ran ");
      debugPrint("initState Function --- ran ");

    super.initState();
  }

  // Builds the widget tree
  // A Build is triggered every time we use setState()
  @override
  Widget build(BuildContext context) {
    print("build Function --- ran ");
    debugPrint("build Function --- ran ");

    return MaterialApp(
      home: Column(
        children: <Widget>[Text('$name'),
         FloatingActionButton(
          child: Icon(Icons.add),
        onPressed: clickMe ,)
        ],
      ),
    );

  }

  //when the widget is removed
  @override
  void dispose() {
    print("dispose Function --- ran ");
    debugPrint("dispose Function --- ran ");

    super.dispose();
  }
}
