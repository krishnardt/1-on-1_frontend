import 'package:flutter/material.dart';
import 'colors.dart';
class TextFormTwo extends StatelessWidget {
  final String hint,labelText;
  final IconData iconData;
  final bool obscuretext;
  const TextFormTwo({Key key, this.hint, this.labelText, this.iconData, this.obscuretext}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscuretext,
      decoration: InputDecoration(
        prefixIcon: Icon(iconData),
        hintText: hint,
        fillColor: LightBlue,
        filled: true,
        errorStyle: TextStyle(
            color: Colors.red[900],
            fontSize: 15.0

        ),enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: DarkBlue),
      ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: DarkBlue),
        ),
      ),
    );
  }
}
