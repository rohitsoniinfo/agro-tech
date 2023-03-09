import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:app/my_flutter_app_icons.dart';
class bottomNavigationBar extends StatelessWidget {
  bottomNavigationBar({required this.currentIndex,required this.onTabTapped});
final int currentIndex;
final Function(int) onTabTapped;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: GNav(
         selectedIndex: currentIndex,
          onTabChange: onTabTapped,
          rippleColor: Color(0xfab5151), // tab button ripple color when pressed
          hoverColor: Color(0xffff5f5), // tab button hover color
          //haptic: true, // haptic feedback
          tabBorderRadius: 40,
          //tabActiveBorder: Border.all(color: Colors.black, width: 1), // tab button border
          //tabBorder: Border.all(color: Colors.grey, width: 1), // tab button border
          tabShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5),
            // blurRadius: 8
          )
          ], // tab button shadow
          curve: Curves.easeOutExpo, // tab animation curves
          duration: Duration(milliseconds: 900), // tab animation duration
          gap: 3, // the tab button gap between icon and text
          color: Colors.grey[800], // unselected icon color
          activeColor: Colors.white, // selected icon and text color
          iconSize: 24, // tab button icon size
          tabBackgroundColor: Colors.green, // selected tab background color
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10), // navigation bar padding
          tabs: [
            GButton(
              icon: MyFlutterApp.cloud_sun_inv,
              text: 'Weather',
            ),
            GButton(
              icon: MyFlutterApp.disease,
              text: 'Disease',
            ),
            GButton(
              icon: Icons.agriculture_outlined,
              text: 'Market',
            ),
            GButton(
              icon: MyFlutterApp.rss_feed,
              text: 'Feed',
            ),
            GButton(
              icon: Icons.person,
              text: 'Profile',
            )
          ]
      ),
    );
  }
}
