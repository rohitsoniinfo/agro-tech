import 'package:flutter/material.dart';
import 'package:app/Components/bottomNavigationBar.dart';
import 'package:app/Screens/marketplace.dart';
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
    Center(
      child: Text('mail'),
    ),
    Center(
      child: Text('person'),
    ),
    marketplace(),
    Center(
      child: Text('human'),
    ),
    Center(
      child: Text('human'),
    )
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


