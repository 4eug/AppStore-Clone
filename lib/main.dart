import 'package:appstore_clone/page/viewpage.dart';
import 'package:appstore_clone/style/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
                  icon: const Icon(CupertinoIcons.gamecontroller_alt_fill),
                  color: Colors.white,
                  iconSize: 30,
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(CupertinoIcons.app_badge),
                  color: Colors.white,
                  iconSize: 30,
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(CupertinoIcons.gamecontroller),
                  color: Colors.white,
                  iconSize: 30,
                  onPressed: () {},
                ),
                 IconButton(
                  icon: const Icon(CupertinoIcons.search),
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


 