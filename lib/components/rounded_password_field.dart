import 'package:flutter/material.dart';
import 'text_field_container.dart';

class RoundedPasswordField extends StatefulWidget {
  final ValueChanged<String> onChanged;
  final String hintText;
  const RoundedPasswordField({Key key, this.onChanged, this.hintText})
      : super(key: key);

  @override
  _RoundedPasswordFieldState createState() => _RoundedPasswordFieldState();
}

class _RoundedPasswordFieldState extends State<RoundedPasswordField> {
  bool obscure = true;
  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: obscure,
        style: TextStyle(color: Colors.white),
        onChanged: widget.onChanged,
        cursorColor: Colors.white,
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: TextStyle(color: Colors.white),
          icon: Icon(
            Icons.lock,
            color: Theme.of(context).primaryColor,
          ),
          suffixIcon: IconButton(
            icon: Icon(Icons.visibility),
            color: Theme.of(context).primaryColor,
            onPressed: () {
              setState(() {
                obscure = !obscure;
              });
            },
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
