import 'package:aztlan/shared/text_form.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:aztlan/shared/colors.dart';

class Signup extends StatefulWidget {
  final double screenHeight, screenWidth;

  const Signup({Key key, this.screenHeight, this.screenWidth})
      : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: PopBlue,
      body: Column(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40.0),
                bottomRight: Radius.circular(40.0)),
            child: Container(
              color: White,
              height: widget.screenHeight * 0.7,
              width: widget.screenWidth,
              child: Form(
                child: ListView(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 30.0, right: 30.0, top: 20, bottom: 15.0),
                      child: Text(
                        'Create An Account',
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w400,
                            color: DarkBlue),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 10),
                      child: TextForm(
                        obscuretext: true,
                        hint: 'Enter Your Name',
                        labelText: 'Name',
                        iconData: Icons.perm_identity,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 10),
                      child: TextForm(
                        obscuretext: false,
                        hint: 'Enter Email',
                        labelText: 'Email',
                        iconData: Icons.email,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 10),
                      child: TextForm(
                        obscuretext: true,
                        hint: 'Enter Password',
                        labelText: 'Password',
                        iconData: Icons.vpn_key,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 10),
                      child: TextForm(
                        obscuretext: true,
                        hint: 'Confirm Password',
                        labelText: 'Password',
                        iconData: Icons.vpn_key,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 100, right: 100, top: 15, bottom: 20),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Container(
                          color: DarkBlue,
                          child: FlatButton(
                            child: Text(
                              'Sign Up',
                              style: TextStyle(color: White, fontSize: 16),
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: RichText(
                        text: TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Already an existing user? ',
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
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
                width: widget.screenWidth*0.7,
                height: widget.screenHeight*0.3,
                child: Image(
                  image: AssetImage('images/man.png'),
                )),
          )
        ],
      ),
    );
  }
}
