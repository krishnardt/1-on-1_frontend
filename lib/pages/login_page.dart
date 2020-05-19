import 'package:aztlan/shared/text_form.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:aztlan/shared/colors.dart';
import 'package:flutter/painting.dart';

class Login extends StatefulWidget {
  final double screenHeight, screenWidth;

  const Login({Key key, this.screenHeight, this.screenWidth}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PopBlue,
      body: Stack(
        children: <Widget>[
          CustomPaint(
            painter: MyCustomPainter(),
            child: Container(
              height: widget.screenHeight * 0.65,
            ),
          ),
          Positioned(
            top: widget.screenHeight * 0.08,
            left: widget.screenWidth * 0.05,
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                      child: Text(
                    'Hey\nThere!',
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w300,
                        color: Colors.white),
                  )),
                ],
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0)),
                child: Container(
                  height: widget.screenHeight * 0.41,
                  color: White,
                  child: SafeArea(
                    child: Form(
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(left: 30, bottom: 10),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    'Sign In',
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.w400,
                                        color: DarkBlue),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(right: 30.0),
                                      child: Align(
                                        alignment: Alignment.topRight,
                                        child: FloatingActionButton(
                                          elevation: 15,
                                          child: Icon(Icons.arrow_forward),
                                          backgroundColor: DarkBlue,
                                          onPressed: () {},
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 5),
                            child: TextForm(
                              obscuretext: false,
                              hint: 'Enter Email',
                              labelText: 'Email',
                              iconData: Icons.email,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                right: 20, left: 20, top: 5, bottom: 5),
                            child: TextForm(
                              obscuretext: true,
                              hint: 'Enter Password',
                              labelText: 'Password',
                              iconData: Icons.vpn_key,
                            ),
                          ),
                          InkWell(
                              child: Text('Forgot password?',textScaleFactor: 1.1,
                                style: TextStyle(color: DarkBlue,fontWeight: FontWeight.w500),)
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(bottom: 15),
                              child: Align(
                                alignment: FractionalOffset.bottomCenter,
                                child: RichText(
                                  text: TextSpan(
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: 'Dont have an account yet? ',
                                          style: TextStyle(
                                              fontSize: 17,
                                              color: Colors.black)),
                                      TextSpan(
                                          text: 'Sign Up',
                                          style: TextStyle(
                                              fontSize: 17,
                                              color: DarkBlue,
                                              fontWeight: FontWeight.w600),
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () => print('click')),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MyCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();

    Path whitePath = Path();
    whitePath.lineTo(size.width * .68, 0);
    whitePath.quadraticBezierTo(
        size.width * .60, size.height * .48, 0, size.height * 0.60);
    whitePath.close();
    paint.color = Colors.white38;
    canvas.drawPath(whitePath, paint);

    Path brownPath = Path();
    brownPath.lineTo(size.width * .60, 0);
    brownPath.quadraticBezierTo(
        size.width * .60, size.height * .50, 0, size.height * 0.55);
    brownPath.close();
    paint.color = DarkBlue;
    canvas.drawPath(brownPath, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}
