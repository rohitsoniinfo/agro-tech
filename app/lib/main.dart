import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentIndex=0;
  List<Widget> childrens = [
    marketplace(),
    Center(
      child: Text('mail'),
    ),
    Center(
      child: Text('person'),
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
        bottomNavigationBar: BottomNavigationBar(
          onTap: onTabTapped,
          currentIndex: currentIndex,
          items: [
            BottomNavigationBarItem(
              label: 'home',
                icon: Icon(Icons.home)
            ),
            BottomNavigationBarItem(
                label: 'mail',
                icon: Icon(Icons.mail)
            ),
            BottomNavigationBarItem(
                label: 'person',
                icon: Icon(Icons.person)
            ),
          ],
        ),

      ),
    );
  }
}



class marketplace extends StatelessWidget {
  const marketplace({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          body: CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                pinned: true,
                title: Text('App Bar'),
                floating: true,
                snap: true,
                // set the height of the app bar when it's fully expanded
                //expandedHeight: 200.0,
                flexibleSpace: FlexibleSpaceBar(
                  // background: Image.network(
                  //   'https://picsum.photos/400/200',
                  //   fit: BoxFit.cover,
                  // ),
                ),
                bottom: TabBar(
                  indicatorColor: Colors.red,
                  tabs: <Widget>[
                    Tab(text: 'Tab 1'),
                    Tab(text: 'Tab 2'),
                    Tab(text: 'Tab 3'),
                  ],
                ),
              ),
              SliverFillRemaining(
                child: TabBarView(
                  children: <Widget>[
                    Center(child: Text('Tab 1')),
                    Center(child: Text('Tab 2')),
                    Center(child: Text('Tab 3')),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
