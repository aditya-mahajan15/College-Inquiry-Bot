import 'package:ai_cp/screens/chatbot.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class InitialScreen extends StatefulWidget {
  @override
  _InitialScreenState createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(
        seconds: 5,
      ),
      () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ChatbotPage(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/bot.jpg',
              width: 400,
              height: 450,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Inquiry Bot",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            SpinKitFadingCircle(
              color: Colors.green,
              size: 40,
            ),
          ],
        ),
      ),
    );
  }
}
