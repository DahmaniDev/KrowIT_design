import 'package:flutter/material.dart';
import 'components/background.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: size.height * 0.1,
            ),
            Text(
              'KrowIT',
              style: TextStyle(
                  fontFamily: 'Pacifico', fontSize: 30, color: Colors.black45),
            ),
            SizedBox(
              height: size.height * 0.1,
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              width: size.width * 0.8,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(29),
                child: FlatButton.icon(
                  icon: Icon(
                    Icons.contact_mail,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                  color: Colors.deepPurple,
                  label: Text(
                    'Search for contract jobs'.toUpperCase(),
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              width: size.width * 0.8,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(29),
                child: FlatButton.icon(
                  icon: Icon(
                    Icons.laptop,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                  color: Colors.deepPurple,
                  label: Text(
                    'Search for freelance jobs'.toUpperCase(),
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              width: size.width * 0.8,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(29),
                child: FlatButton.icon(
                  icon: Icon(
                    Icons.person_pin,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                  color: Colors.deepPurple,
                  label: Text(
                    'Improve your profile'.toUpperCase(),
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: Text(
                'Developped By DahmaniDev',
                style: TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
