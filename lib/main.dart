import 'package:flutter/material.dart';
import 'package:flutter_web_squid_game/pages/home.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Roboto', brightness: Brightness.dark),
      home: Home(),
    );
  }
}
