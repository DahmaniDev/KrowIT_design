import 'package:flutter/material.dart';
import 'package:krowit/vues/dashboard/dashboard.dart';
import 'package:krowit/vues/home_page/home_screen.dart';
import 'package:krowit/vues/messages_page/messages_screen.dart';
import 'package:krowit/vues/profile_page/profile_screen.dart';
import 'package:krowit/vues/search_page/search_screen.dart';
import 'package:krowit/vues/welcome_page/welcomePage.dart';
import 'package:krowit/vues/login_page/login_screen.dart';
import 'package:krowit/vues/signup_page/signup_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Krow IT Application',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF3b4d61),
        primaryColorLight: Colors.deepPurple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: WelcomePage(),
      routes: <String, WidgetBuilder>{
        '/landingPage': (BuildContext context) => new WelcomePage(),
        '/signupPage': (BuildContext context) => new SignUpScreen(),
        '/loginPage': (BuildContext context) => new LoginScreen(),
        '/dashboard': (BuildContext context) => new Dashboard(),
        '/homePage': (BuildContext context) => new HomePage(),
        '/searchPage': (BuildContext context) => new SearchPage(),
        '/messagesPage': (BuildContext context) => new MessagesPage(),
        '/profilePage': (BuildContext context) => new ProfilePage(),
      },
    );
  }
}
