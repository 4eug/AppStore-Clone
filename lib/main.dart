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
          color: Colors.purple),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(1, 5, 1, 5),
            child: SafeArea(
              top: false,
              // ignore: unnecessary_const
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: const Icon(Icons.home),
                    color: Colors.white,
                    iconSize: 30,
                    onPressed: (){},
                    ),
                IconButton(
                  icon: const Icon(CupertinoIcons.search),
                  color: Colors.white,
                  iconSize: 30,
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(CupertinoIcons.bell),
                  color: Colors.white,
                  iconSize: 30,
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(CupertinoIcons.person),
                  color: Colors.white,
                  iconSize: 30,
                  onPressed: () {},
                ),
                 IconButton(
                  icon: const Icon(CupertinoIcons.person),
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


 