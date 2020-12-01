import 'package:ai_cp/screens/initialscreen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Inquiry Bot',
      debugShowCheckedModeBanner: false,
      home: InitialScreen(),
    );
  }
}
