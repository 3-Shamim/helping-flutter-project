import 'package:flutter/material.dart';
import 'package:flutterapp/User.dart';

class UserCard extends StatelessWidget {

  final User user;
  final Function delete;

  UserCard({this.user, this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Padding(
        padding: EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              user.name,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              "Cgpa: ${user.cgpa}",
              style: TextStyle(fontSize: 14.0, color: Colors.grey[800]),
            ),
            SizedBox(
              height: 8.0,
            ),
            FlatButton.icon(
              label: Text("Delete user"),
              icon: Icon(Icons.delete),
              onPressed: delete,
            )
          ],
        ),
      ),
    );
  }
}
