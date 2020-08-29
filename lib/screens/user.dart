import 'package:flutter/material.dart';

void main() {
  runApp(User());
}

class User extends StatefulWidget {
  static const routeName = '/user';

  @override
  _UserState createState() => _UserState();
}

class _UserState extends State<User> {
  @override
  bool isSwitched = false;
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xff211E2B),
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.only(top: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  radius: 100.0,
                  backgroundColor: Colors.grey,
                ),
                SizedBox(
                  height: 30.0,
                ),
                Text(
                  'Deepak Mangla',
                  style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Light Mode',
                      style: TextStyle(
                          fontSize: 30.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Transform.scale(
                      scale: 1.4,
                      child: Switch(
                        value: isSwitched,
                        onChanged: (value) {
                          setState(() {
                            isSwitched = value;
                          });
                        },
                        activeTrackColor: Colors.white,
                        activeColor: Colors.grey,
                      ),
                    ),
                  ],
                ),
                FlatButton(
                  onPressed: () {},
                  child: Text(
                    'Logout',
                    style: TextStyle(
                        fontSize: 30.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
