import 'package:flutter/material.dart';
import 'package:flutterapp/models/world_time.dart';
import 'package:flutterapp/pages/home.dart';

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

  List<WorldTime> locations = [
    WorldTime('London', null, 'uk.png', 'Europe/London', false),
    WorldTime('Athens', null, 'greece.png', 'Europe/Berlin', false),
    WorldTime('Cairo', null, 'egypt.png', 'Africa/Cairo', false),
    WorldTime('Nairobi', null, 'kenya.png', 'Africa/Nairobi', false),
    WorldTime('Chicago', null, 'usa.png', 'America/Chicago', false),
    WorldTime('New York', null, 'usa.png', 'America/New_York', false),
    WorldTime('Seoul', null, 'south_korea.png', 'Asia/Seoul', false),
    WorldTime('Jakarta', null, 'indonesia.png', 'Asia/Jakarta', false),
  ];

  void updateTime(index) async {
    WorldTime worldTime = locations[index];

    await worldTime.getTime();

    Navigator.pop(context, {
      "location": worldTime.location,
      "flag": worldTime.flag,
      "time": worldTime.time,
      "isDayTime": worldTime.isDayTime
    });
  }

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
      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: ListTile(
                onTap: () {
                  print(locations[index].location);
                  updateTime(index);
                },
                title: Text(locations[index].location),
                leading: Icon(Icons.location_searching),
              ),
            ),
          );
        },
      ),
    );
  }
}
