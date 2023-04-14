import 'package:flutter/material.dart';

import 'model/user.dart';

class UserInfoPage extends StatelessWidget {
  UserInfoPage({super.key, required this.userInfo});
  User userInfo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Info'),
        centerTitle: true,
      ),
      body: Card(
        margin: EdgeInsets.all(16.0),
        child: Column(children: [
          CircleAvatar(
                        backgroundColor: Colors.white70,
                        minRadius: 60.0,
                        child: CircleAvatar(
                          radius: 50.0,
                          backgroundImage:
                              NetworkImage('https://cdn-icons-png.flaticon.com/512/3607/3607444.png'),
                        ),
                      ),
          ListTile(
            title: Text(
              '${userInfo.name}',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            leading: Icon(
              Icons.person,
              color: Colors.black,
            ),
          ),
          ListTile(
            title: Text(
              '${userInfo.phone}',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            leading: Icon(
              Icons.call,
              color: Colors.black,
            ),
          ),
          ListTile(
            title: Text(
              '${userInfo.email}',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            leading: Icon(
              Icons.mail_outline,
              color: Colors.black,
            ),
          ),
        ]),
      ),
    );
  }
}
