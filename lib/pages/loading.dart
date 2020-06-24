import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Loading extends StatefulWidget {
  static final String routeName = "/loading";

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void getData() async {
    Response response =
        await get('https://jsonplaceholder.typicode.com/todos/1');
//    print(response.body);

    Map data = json.decode(response.body);
    print(data);
    print(data["userId"]);

  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("loading..."),
    );
  }
}
