import 'package:appstore_clone/page/viewpage.dart';
import 'package:appstore_clone/style/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AppStore Clone',
      theme: ThemeData(
        primaryColor: ColorStyles.primaryColor,
      ),
      home: const MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: ColorStyles.primaryDarkColor,
      bottomNavigationBar:BottomNavigationBar(
        backgroundColor: Colors.white.withOpacity(0.1),
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: FaIcon(
                  FontAwesomeIcons.fileLines,
                  size: 30,
                  color: Colors.white,
                ),
              ),
              // ignore: deprecated_member_use
              title: Text('Today', style: TextStyle(color: Colors.white),),
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: FaIcon(
                  FontAwesomeIcons.rocket,
                  size: 30,
                  color: Colors.white,
                ),
              ),
              // ignore: deprecated_member_use
              title: Text('Games', style: TextStyle(color: Colors.white),),
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: FaIcon(
                  FontAwesomeIcons.layerGroup,
                  size: 30,
                  color: Colors.white,
                ),
              ),
              // ignore: deprecated_member_use
              title: Text('Apps', style: TextStyle(color: Colors.white),),
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: FaIcon(FontAwesomeIcons.gamepad, size: 30.0, color: Colors.white),
              ),
              // ignore: deprecated_member_use
              title: Text('Arcade', style: TextStyle(color: Colors.white),),
            ),
           BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: FaIcon(FontAwesomeIcons.magnifyingGlass, size: 30.0, color: Colors.white),
              ),
              // ignore: deprecated_member_use
              title: Text('Search', style: TextStyle(color: Colors.white),),
            ),
          ],
        ),
      body: const ViewPage(),
    );
  }
}


 