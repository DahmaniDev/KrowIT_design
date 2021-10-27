import 'package:flutter/material.dart';
import 'package:krowit/components/roundedButton.dart';
import 'package:flutter_svg/svg.dart';
import 'components/background.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "WELCOME TO KROW IT",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.05),
            SvgPicture.asset(
              "assets/icons/chat.svg",
              height: size.height * 0.45,
            ),
            SizedBox(height: size.height * 0.05),
            RoundedButton(
              text: "LOGIN",
              press: () {
                Navigator.of(context).pushNamed('/loginPage');
              },
            ),
            RoundedButton(
              text: "SIGN UP",
              color: Theme.of(context).primaryColorLight,
              textColor: Colors.black,
              press: () {
                Navigator.of(context).pushNamed('/signupPage');
              },
            ),
          ],
        ),
      ),
    );
  }
}
