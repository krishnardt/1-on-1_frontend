import 'dart:async';
import 'package:aztlan/onboard_shared/items.dart';
import 'package:aztlan/onboard_shared/slide_model/slide_details.dart';
import 'package:aztlan/pages/login_page.dart';
import 'package:aztlan/pages/signup_page.dart';
import 'package:aztlan/route_generator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:aztlan/shared/colors.dart';
import 'package:aztlan/onboard_shared/dots.dart';

class Onboard extends StatefulWidget {

  @override
  _OnboardState createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {
  int _currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 5), (Timer timer) {
      if (_currentPage < 2) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
    });
    if (_pageController.hasClients) {
      _pageController.animateToPage(_currentPage,
          duration: Duration(milliseconds: 300), curve: Curves.easeIn);
    }
  }

  _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [PopBlue, Colors.deepPurple],
              stops: [0.3, 0.8],
              begin: FractionalOffset.topCenter,
              end: FractionalOffset.bottomCenter,
              tileMode: TileMode.repeated),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Expanded(
                  child: Stack(
                alignment: AlignmentDirectional.bottomCenter,
                children: [
                  PageView.builder(
                    onPageChanged: _onPageChanged,
                    controller: _pageController,
                    scrollDirection: Axis.horizontal,
                    itemCount: SlideList.length,
                    itemBuilder: (context, index) => Items(index),
                  ),
                  Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 30),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            for (int i = 0; i < SlideList.length; i++)
                              if (i == _currentPage)
                                SlideDots(true)
                              else
                                SlideDots(false)
                          ],
                        ),
                      )
                    ],
                  )
                ],
              )),
              SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: FlatButton(
                      child: Text(
                        'Getting Started',
                        style: TextStyle(fontSize: 18),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      padding: EdgeInsets.all(15),
                      color: White,
                      textColor: DarkBlue,
                      onPressed: () {
                        Navigator.of(context).popAndPushNamed('/signup',
                            arguments:{'screenHeight':MediaQuery.of(context).size.height,'screenWidth':MediaQuery.of(context).size.width});
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12, bottom: 10),
                    child: Center(
                      child: RichText(
                        text: TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Already a user? ',
                                style: TextStyle(fontSize: 18, color: White)),
                            TextSpan(
                                text: 'Sign In',
                                style: TextStyle(
                                    fontSize: 19,
                                    color: Colors.cyanAccent,
                                    fontWeight: FontWeight.w600),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () => Navigator.of(context).popAndPushNamed('/login',
                                      arguments:{'screenHeight':MediaQuery.of(context).size.height,'screenWidth':MediaQuery.of(context).size.width})),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }



}












