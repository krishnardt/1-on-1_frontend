import 'package:aztlan/pages/login_page.dart';
import 'package:aztlan/pages/onboarding_screen.dart';
import 'package:aztlan/pages/signup_page.dart';
import 'package:aztlan/web_screen/home_web_screen.dart';
import 'package:aztlan/web_screen/login.dart';
import 'package:aztlan/web_screen/my_home_page.dart';
import 'package:aztlan/web_screen/one_to_one/one_to_one_main.dart';
import 'package:flutter/material.dart';

class RouteGenerator{
  static Route<dynamic> generateRoute(RouteSettings settings){
    Map args =settings.arguments;

    switch(settings.name){
      case '/':
     //   return MaterialPageRoute(builder: (_)=> Onboard());
          return MaterialPageRoute(builder: (_) => MyHomePage());
      case '/log':
        return MaterialPageRoute(builder: (_)=> Log());
      case '/login':
        return MaterialPageRoute(builder: (_)=> Login(screenHeight: args['screenHeight'],screenWidth: args['screenWidth'],));
      case '/signup':
        return MaterialPageRoute(builder: (_)=> Signup(screenHeight: args['screenHeight'],screenWidth: args['screenWidth'],));
      case '/log':
        return MaterialPageRoute(builder:  (_) => Log());
    }
  }
}
