

// this file contains Scaffold
//
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyAppScaffold());
}

class MyAppScaffold extends StatefulWidget {
  @override
  _MyAppScaffoldState createState() => _MyAppScaffoldState();
}

class _MyAppScaffoldState extends State<MyAppScaffold> {

  List countries = [];
  List filteredCountries = [];
  bool isSearching = false;

  void _filterCountries(value) {
    setState(() {
      filteredCountries = countries
          .where((country) =>
          country['name'].toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: !isSearching
                ? Text('All Countries')
                : TextField(
              onChanged: (value) {
                _filterCountries(value);
              },
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  icon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  hintText: "Search Country Here",
                  hintStyle: TextStyle(color: Colors.white)),
            ),
            actions: <Widget>[
              isSearching
                  ? IconButton(
                icon: Icon(Icons.cancel),
                onPressed: () {
                  setState(() {
                    this.isSearching = false;
                  });
                },
              )
                  : IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  setState(() {
                    this.isSearching = true;
                  });
                },
              )
            ],

          ),
              body: Text('this is body of Scaffold Sample'),
        ),
      ),
    );
  }
}
