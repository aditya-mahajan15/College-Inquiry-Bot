import 'package:flutter/material.dart';
import 'Screens/loginscreen.dart';
import 'Screens/signupscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'loginpage',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      initialRoute: 'Login',
      routes: 
      {
        'Login':(context)=> LoginScreen(),
        'SignUp':(context)=>SignUpScreen(),
      },
    );
  }
}