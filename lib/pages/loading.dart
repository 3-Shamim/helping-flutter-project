import 'package:flutter/material.dart';
import 'package:flutterapp/models/world_time.dart';
import 'package:flutterapp/pages/home.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  static final String routeName = "/loading";

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
//  String _time = "loading";

  void setupDateTime() async {
    WorldTime worldTime = new WorldTime("Asia", null, "asia.png", "Asia/Dhaka", false);

      await worldTime.getTime();
      Navigator.pushReplacementNamed(context, Home.routeName, arguments: {
        "location": worldTime.location,
        "flag": worldTime.flag,
        "time": worldTime.time,
        "isDayTime": worldTime.isDayTime
      });
//      setState(() {
//        _time = worldTime.time;
//      });
  }

  @override
  void initState() {
    super.initState();
    setupDateTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Center(
        child: SpinKitCubeGrid(
          color: Colors.white,
          size: 80.0,
        ),
      ),
    );
  }
}
