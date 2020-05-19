import 'package:flutter/material.dart';
import 'colors.dart';
class TextForm extends StatelessWidget {
  final String hint,labelText;
  final IconData iconData;
  final bool obscuretext;
  const TextForm({Key key, this.hint, this.labelText, this.iconData, this.obscuretext}) : super(key: key);
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
          ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          borderSide: BorderSide(color: Colors.transparent),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          borderSide: BorderSide(color: Colors.transparent),
        ),
      ),
    );
  }
}
