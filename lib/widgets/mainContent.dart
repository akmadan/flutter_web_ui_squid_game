import 'package:flutter/material.dart';
import 'package:flutter_web_squid_game/utils/constants.dart';
import 'package:flutter_web_squid_game/widgets/navBar.dart';
import 'package:responsive_builder/responsive_builder.dart';

class MainContent extends StatefulWidget {
  const MainContent({Key? key}) : super(key: key);

  @override
  _MainContentState createState() => _MainContentState();
}

class _MainContentState extends State<MainContent> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileMainContent(),
      desktop: DesktopMainContent(),
    );
  }
}

Widget MobileMainContent() {
  return Container();
}

Widget DesktopMainContent() {
  return Expanded(
      child: Container(
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(child: Image.asset(squid_game)),
                SizedBox(
                  height: 40,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(figures),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                            Text(
                              'Life is like a game, there are many players. \nIf you don’t play with them, they’ll play with you...',
                              style: TextStyle(fontSize: w! / 70),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.trending_up,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Trending  #1',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: w! / 70),
                                )
                              ],
                            )
                          ]))
                    ],
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                Container(
                  height: 42,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          elevation: MaterialStateProperty.all(40),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100))),
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xffE50914))),
                      onPressed: () {},
                      child: Text(
                        'Continue Watching',
                        style: TextStyle(letterSpacing: 1.2, fontSize: 19),
                      )),
                ),
                SizedBox(
                  height: 32,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    navButton('S1'),
                    navButton('E9'),
                    navButton('2021'),
                    Image.asset(imdb),
                    navButton('8.2')
                  ],
                )
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(child: Image.asset(squid)),
        )
      ],
    ),
  ));
}
