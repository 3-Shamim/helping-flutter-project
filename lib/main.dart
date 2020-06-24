import 'package:flutter/material.dart';
import 'package:flutterapp/pages/choose_location.dart';
import 'package:flutterapp/pages/home.dart';
import 'package:flutterapp/pages/loading.dart';

void main() {
  runApp(MaterialApp(
//    home: Home(),
  initialRoute: Loading.routeName,
    routes: {
     Loading.routeName: (context) => Loading(),
      Home.routeName: (context) => Home(),
      ChooseLocation.routeName: (context) => ChooseLocation()
    },
  ));
}
