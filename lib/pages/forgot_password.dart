import 'package:aztlan/shared/text_form_two.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:aztlan/shared/colors.dart';

class ForgotPassword extends StatefulWidget {
  final double screenHeight, screenWidth;

  const ForgotPassword({Key key, this.screenHeight, this.screenWidth}) : super(key: key);

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: PopBlue,
        child: Center(
          child: Container(
            height: widget.screenHeight*0.75,
            width:  widget.screenWidth*0.9,
            child: Card(
                elevation: 20.0,
                color: White,
                  child: Form(
                    child: ListView(
                      children: <Widget>[
                        Container(
                          height: 280,
                            child: Image(
                              image: AssetImage('images/forgot.png'),
                            )),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                 top:20,bottom: 5.0),
                            child: Text(
                              'Forgot password?',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  color: DarkBlue),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 10),
                          child: TextFormTwo(
                            obscuretext: false,
                            hint: 'Enter Email',
                            labelText: 'Email',
                            iconData: Icons.email,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 80, right: 80, top: 4, bottom: 17),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Container(
                              color: DarkBlue,
                              child: FlatButton(
                                child: Text(
                                  'Send a reset link',
                                  style: TextStyle(color: White, fontSize: 16),
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: Center(
                            child: RichText(
                              text: TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                      text: 'Jump to ',
                                      style: TextStyle(
                                          fontSize: 17, color: Colors.black)),
                                  TextSpan(
                                      text: 'Sign In',
                                      style: TextStyle(
                                          fontSize: 17,
                                          color: DarkBlue,
                                          fontWeight: FontWeight.w600),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () => print('click')),
                                  TextSpan(
                                      text: ' page',
                                      style: TextStyle(
                                          fontSize: 17, color: Colors.black)),
                                ],
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
      ),
    );
  }
}
