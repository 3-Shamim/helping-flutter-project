import 'package:flutter/material.dart';
import 'package:flutterapp/pages/choose_location.dart';

class Home extends StatefulWidget {
  static final String routeName = "/home";

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};

  @override
  Widget build(BuildContext context) {

    data = data.isNotEmpty ? data: ModalRoute.of(context).settings.arguments;
//    print(data);

    String bgImage = data["isDayTime"] ? 'day.png' : 'night.png';

    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("World Time Project"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
//        elevation: 0.0,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/$bgImage'), fit: BoxFit.cover),
        ),
        child: Column(
          children: <Widget>[
            FlatButton.icon(
              onPressed: () async {
                dynamic result = await Navigator.pushNamed(context, ChooseLocation.routeName);

                setState(() {
                  data = {
                    "location": result["location"],
                    "flag": result["flag"],
                    "time": result["time"],
                    "isDayTime": result["isDayTime"]
                  };
                });

              },
              icon: Icon(
                Icons.edit_location,
                color: Colors.white,
              ),
              label: Text(
                "Edit Location",
                style: TextStyle(
                  color: Colors.grey[200],
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  data["location"],
                  style: TextStyle(fontSize: 28.0, letterSpacing: 2.0),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              data["time"],
              style: TextStyle(fontSize: 66.0, letterSpacing: 2.0),
            ),
          ],
        ),
      ),
    );
  }
}
