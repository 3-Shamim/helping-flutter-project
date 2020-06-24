import 'package:flutter/material.dart';
import 'package:flutterapp/User.dart';
import 'package:flutterapp/user_card.dart';

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
  List<User> _userList = [
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
        children: _userList.map((user) => UserCard(user: user)).toList(),
      ),
    );
  }
}
