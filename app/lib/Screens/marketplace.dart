import 'package:flutter/material.dart';
class marketplace extends StatelessWidget {
  const marketplace({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          body: CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                backgroundColor: Colors.green,
                pinned: true,
                title: Center(child: Text('MarketPlace'),),
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
                bottom: PreferredSize(
                  preferredSize: Size.fromHeight(60),
                  child: Material(
                    color: Color(0xff95de95),
                    child: TabBar(
                      indicatorColor: Colors.red,
                      labelColor: Colors.black,
                      tabs: <Widget>[
                        Tab(text: 'Tab 1'),
                        Tab(text: 'Tab 2'),
                        Tab(text: 'Tab 3'),
                      ],
                    ),
                  ),
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