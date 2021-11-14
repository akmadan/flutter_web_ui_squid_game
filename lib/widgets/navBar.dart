import 'package:flutter/material.dart';
import 'package:flutter_web_squid_game/utils/constants.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileNavBar(),
      desktop: DeskTopNavBar(),
    );
  }
}

Widget MobileNavBar() {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 20),
    height: 70,
    child: Row(
      children: [Icon(Icons.menu), navLogo()],
    ),
  );
}

Widget DeskTopNavBar() {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    height: 70,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(Icons.menu),
        Row(
          children: [
            navButton('Home'),
            navButton('About'),
            navButton('Cast'),
            navButton('Trailor')
          ],
        ),
        navLogo()
      ],
    ),
  );
}

Widget navButton(String text) {
  return Container(
      margin: EdgeInsets.symmetric(horizontal: 4),
      child: TextButton(
          onPressed: () {},
          child: Text(text,
              style: TextStyle(
                  color: text == 'Home' ? Colors.red : Colors.white,
                  fontSize: 18))));
}

Widget navLogo() {
  return Container(
    height: 60,
    width: 180,
    child: Image.asset(netflix),
  );
}
