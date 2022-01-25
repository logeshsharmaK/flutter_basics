

import 'package:flutter/material.dart';


void main(){
  runApp(MyApp());
}

// Stateless does not change over dynamically
// build function only runs once.
// if we want to change something in UI we should work in code and then build it.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Text('Stateless'),
    );
  }
}
