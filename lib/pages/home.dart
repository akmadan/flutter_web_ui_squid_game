import 'package:flutter/material.dart';
import 'package:flutter_web_squid_game/utils/constants.dart';
import 'package:flutter_web_squid_game/widgets/mainContent.dart';
import 'package:flutter_web_squid_game/widgets/navBar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width;
    h = MediaQuery.of(context).size.height;
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment(
                  0.8, 0.0), // 10% of the width, so there are ten blinds.
              colors: <Color>[
                Color(0xffD00070),
                Color(0xff000000)
              ], // red to yellow
            ),
            image: DecorationImage(image: AssetImage(bg), fit: BoxFit.cover),
            color: Colors.pink),
        child: Column(
          children: [
            NavBar(),
            SizedBox(
              height: 100,
            ),
            MainContent()
          ],
        ),
      ),
    ));
  }
}
