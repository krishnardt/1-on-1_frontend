import 'package:aztlan/shared/web_shared/appbar.dart';
import 'package:aztlan/web_screen/login.dart';
import 'package:aztlan/web_screen/one_to_one/one_to_one_main.dart';
import 'package:flutter/material.dart';

import 'home_web_screen.dart';
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight,screenWidth;
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;

    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth >= 800) {
        return Scaffold(
          appBar: appbarDesktop(),
          body: SingleChildScrollView(
            child: OneToOne(screenWidth: screenWidth,screenHeight: screenHeight,),
          ),
        );
      } else {
        return Scaffold(
          appBar: appbarMobile(),
          body: SingleChildScrollView(
            child: OneToOne(screenWidth: screenWidth,screenHeight:screenHeight)
          ),
        );
      }
    });
  }
}
