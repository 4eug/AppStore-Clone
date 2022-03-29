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
        primaryColor: ColorStyles.primaryDarkColor,
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
      bottomNavigationBar:DecoratedBox(
        decoration: const BoxDecoration(
          color: Colors.black),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(1, 5, 1, 5),
            child: SafeArea(
              top: false,
              // ignore: unnecessary_const
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: const Icon(Icons.today),
                    color: Colors.white,
                    iconSize: 30,
                    onPressed: (){},
                    ),
                IconButton(
                  icon: const FaIcon(FontAwesomeIcons.rocket),
                  color: Colors.white,
                  iconSize: 30,
                  onPressed: () {},
                ),
                IconButton(
                  icon: const FaIcon(FontAwesomeIcons.layerGroup),
                  color: Colors.white,
                  iconSize: 30,
                  onPressed: () {},
                ),
                IconButton(
                  icon: const FaIcon(FontAwesomeIcons.gamepad),
                  color: Colors.white,
                  iconSize: 30,
                  onPressed: () {},
                ),
                 IconButton(
                  icon: const FaIcon(FontAwesomeIcons.magnifyingGlass),
                  color: Colors.white,
                  iconSize: 30,
                  onPressed: () {},
                ), 
                ],
              )),
          ),
          ) ,
      body: const ViewPage(),
    );
  }
}


 