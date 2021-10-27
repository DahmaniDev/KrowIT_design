import 'package:flutter/material.dart';
import 'package:krowit/components/custom_text_field.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  String _input;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomInputField(
              hintText: "Type something...",
              onChanged: (value) {
                setState(() {
                  _input = value;
                });
              },
            ),
            Divider(
              thickness: 3,
            ),
            SizedBox(height: 150),
            Container(
              child: Image.asset('assets/search.png'),
            ),
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Text(
                'Looking for a particular thing ?',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Stack(
              children: [
                Positioned(
                  child: Text(
                    'Developped By DahmaniDev',
                    style: TextStyle(
                        color: Colors.deepPurple,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
