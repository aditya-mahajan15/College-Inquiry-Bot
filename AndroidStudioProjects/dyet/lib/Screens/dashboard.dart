import 'package:dyet/authentication/auth.dart';
import 'package:dyet/bmicalc/inputpage.dart';
import 'package:flutter/material.dart';
import 'package:dyet/Screens/homepage.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Dashboard'),
        centerTitle: true,
        backgroundColor: Colors.green,
        elevation: 0,
        actions: <Widget>[
          FlatButton.icon(
            icon: Icon(Icons.person),
            label: Text(
              'logout',
              style: TextStyle(color: Colors.black),
            ),
            onPressed: () async {
              await _auth.signOut();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ));
            },
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Card(
                  margin: EdgeInsets.fromLTRB(40, 30, 0, 0),
                  color: Colors.green,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: <Widget>[
                        Image.asset(
                          'assets/bmi.png',
                          width: 100,
                          height: 100,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        FlatButton(
                          child: Text(
                            'BMI Calc',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => InputPage(),
                                ));
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.fromLTRB(60, 30, 40, 0),
                  color: Colors.green,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: <Widget>[
                        Image.asset(
                          'assets/chatbot.png',
                          width: 100,
                          height: 100,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        FlatButton(
                          child: Text(
                            'ChatBot',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
