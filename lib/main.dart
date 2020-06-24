import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int level = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Demo Project"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
//        elevation: 0.0,
      ),
      body: UserList(),
    );
  }
}

class UserList extends StatefulWidget {
  @override
  _UserListState createState() => _UserListState();
}

class _UserListState extends State<UserList> {
  List<User> userList = [
    User("Shamim", 3.53),
    User("Roni", 4),
    User("Mehedi", 4),
    User("Rajon", 4),
    User("Sourav", 4),
    User("Kamrul", 4)
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10.0),
      child: Column(
        children: userList.map((e) {
          return Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.only(bottom: 5.0),
            color: Colors.blueAccent,
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Text(
                    e._name,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    e.cgpa.toString(),
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}

class User {
  String _name;
  double _cgpa;

  User(this._name, this._cgpa);

  double get cgpa => _cgpa;

  String get name => _name;
}
