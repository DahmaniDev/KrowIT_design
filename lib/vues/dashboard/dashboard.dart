import 'package:flutter/material.dart';
import 'package:krowit/vues/home_page/home_screen.dart';
import 'package:krowit/vues/messages_page/messages_screen.dart';
import 'package:krowit/vues/profile_page/profile_screen.dart';
import 'package:krowit/vues/search_page/search_screen.dart';
import 'components/bottom_navigation.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavyBar(
          selectedIndex: _currentIndex,
          showElevation: true,
          itemCornerRadius: 24,
          curve: Curves.easeIn,
          onItemSelected: (index) => setState(() => _currentIndex = index),
          items: <BottomNavyBarItem>[
            BottomNavyBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
              activeColor: Theme.of(context).primaryColor,
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon: Icon(Icons.search),
              title: Text('Search'),
              activeColor: Theme.of(context).primaryColor,
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon: Icon(Icons.message),
              title: Text(
                'Messages',
              ),
              activeColor: Theme.of(context).primaryColor,
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon: Icon(Icons.person),
              title: Text('Profile'),
              activeColor: Theme.of(context).primaryColor,
              textAlign: TextAlign.center,
            ),
          ],
        ),
        body: _currentIndex == 0
            ? HomePage()
            : _currentIndex == 1
                ? SearchPage()
                : _currentIndex == 2
                    ? MessagesPage()
                    : _currentIndex == 3
                        ? ProfilePage()
                        : Container());
  }
}
