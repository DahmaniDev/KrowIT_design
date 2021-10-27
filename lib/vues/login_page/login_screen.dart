import 'package:flutter/material.dart';
import 'package:krowit/components/already_have_an_account_acheck.dart';
import 'package:krowit/components/roundedButton.dart';
import 'package:krowit/components/rounded_input_field.dart';
import 'package:krowit/components/rounded_password_field.dart';
import 'package:flutter_svg/svg.dart';
import 'components/background.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}

class Body extends StatefulWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  String _email;
  String _password;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: size.height * 0.04),
            SvgPicture.asset(
              "assets/icons/login.svg",
              height: size.height * 0.35,
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {
                setState(() {
                  _email = value;
                });
              },
            ),
            RoundedPasswordField(
              onChanged: (value) {
                _password = value;
              },
              hintText: "Password",
            ),
            RoundedButton(
              text: "LOGIN",
              press: () {
                if (_email == "dahmaniDev" && _password == "12345") {
                  Navigator.of(context).pushReplacementNamed('/dashboard');
                }
              },
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.of(context).pushNamed("/signupPage");
              },
            ),
          ],
        ),
      ),
    );
  }
}
