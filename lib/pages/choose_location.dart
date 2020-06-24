import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {

  static final String routeName = "/location";

  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

//  int counter = 0;

//  void getData() async {
//
//    Future.delayed(Duration(seconds: 3), () {
//      print("delayed function");
//    });
//
//
//    // simulate network request
//    await Future.delayed(Duration(seconds: 2), () {
//      print("delayed function 2");
//    });
//
//    print("Statement");
//  }
//
//  @override
//  void initState() {
//    // TODO: implement initState
//    super.initState();
//
//    print("Init state function run");
//    getData();
//
//  }


  @override
  Widget build(BuildContext context) {
    print("Build function run");


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text("Choose a Location"),
        centerTitle: true,
        elevation: 0.0,
      ),
//      body: RaisedButton(
//        onPressed: () {
//          setState(() {
//            counter += 1;
//          });
//        },
//        child: Text("Counter is $counter"),
//      ),
      body:Text("choose location"),
    );
  }
}
