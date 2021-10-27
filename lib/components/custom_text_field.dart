import 'package:flutter/material.dart';
import 'text_field_container.dart';

class CustomInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const CustomInputField({
    Key key,
    this.hintText,
    this.icon = Icons.search,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      child: TextFieldContainer(
        child: TextField(
          onChanged: onChanged,
          style: TextStyle(color: Colors.white),
          cursorColor: Colors.white,
          decoration: InputDecoration(
              icon: Icon(
                icon,
                color: Colors.white,
              ),
              hintText: hintText,
              border: InputBorder.none,
              hintStyle: TextStyle(color: Colors.white)),
        ),
      ),
    );
  }
}
