//Search bar at top

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class MainPage extends StatefulWidget {
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.green[400]));
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Text(
          'Precious Plants',
          style: TextStyle(color: Color(0xffffffff)),
        ),
      ),
      body: Container(
        //Text("Precious Plants"),
        margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(22.0))
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 5.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Search Phone",
                    hintStyle: TextStyle(color: Colors.green[200]),
                    icon: Icon(Icons.search, color: Colors.green[200]),
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}


