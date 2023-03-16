import 'package:app/Screens/weatherScreen.dart';
import 'package:flutter/material.dart';
import 'package:app/Components/bottomNavigationBar.dart';
import 'package:app/Screens/marketplace.dart';
import 'package:app/Screens/AlllScreens.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentIndex=2;
  List<Widget> childrens = [
    weatherScreen(),
    diseaseDetection(),
    marketplace(),
    feedScreen(),
    profileScreen(),
  ];
  void onTabTapped(int index)
  {
    setState(() {
      currentIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // appBar: AppBar(),
        body: childrens[currentIndex],
        bottomNavigationBar: bottomNavigationBar(currentIndex: currentIndex,onTabTapped: onTabTapped,),
      ),
    );
  }
}


