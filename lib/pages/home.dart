import 'package:flutter/material.dart';
import 'package:flutterapp/pages/choose_location.dart';

class Home extends StatefulWidget {

  static final String routeName = "/home";

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("World Time Project"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
//        elevation: 0.0,
      ),
      body: Column(
        children: <Widget>[
          FlatButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, ChooseLocation.routeName);
              },
              icon: Icon(Icons.edit_location),
              label: Text("Edit Location"))
        ],
      ),
    );
  }
}
