import 'package:aztlan/shared/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WebNavDots extends StatelessWidget {
  bool isActive;
  int number;

  WebNavDots(this.isActive, this.number);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 10),
      height: 40,
      width: 40,
      child: Center(
        child: Text(
          '$number',
          style: TextStyle(
            color: isActive? White: Black,
            fontWeight: isActive? FontWeight.bold: FontWeight.normal,
          ),
        ),
      ),
      decoration: BoxDecoration(
        color: isActive ? DarkBlue : Colors.white30,
        borderRadius: BorderRadius.all(Radius.circular(40)),
      ),
    );
  }
}
