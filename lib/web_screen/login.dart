import 'package:aztlan/shared/colors.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Log extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    double screenHeight,screenWidth;
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;

    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 800) {
        return Column(
          children: LoginPageChildren(screenWidth,screenHeight),
        );
      } else {
        return Column(children: LoginPageChildrenShrinked(screenHeight,screenWidth));
      }
    });
  }

  List<Widget> LoginPageChildren(screenWidth,screenHeight) {
    return <Widget>[
      Row(
        children: [
          Container(
            width: screenWidth / 2,
            height: screenHeight,
            color: PopBlue,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "images/workflow.png",
                )
              ],
            ),
          ),
          Container(
            // color: Black,
            width: screenWidth / 2,
            height: screenHeight,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      height: 400,
                      width: 500,
                      child: Card(
                        elevation: 10,
                        shadowColor: PopBlue,
                        child: Form(
                          child: Column(
                            children: [
                              Container(
                                height: 50,
                                width: 500,
                                color: DarkBlue,
                                child: Center(
                                  child: Text(
                                    'Login',
                                    style: TextStyle(
                                      color: White,
                                      fontSize: 30,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 40, right: 30, left: 30),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    prefixIcon: Icon(Icons.email),
                                    hintText: 'Enter Email',
                                    errorStyle: TextStyle(
                                        color: Colors.red[900], fontSize: 15.0),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                      borderSide: BorderSide(color: Colors.grey),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                      borderSide: BorderSide(color: Colors.grey),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 20, right: 30, left: 30),
                                child: TextFormField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    prefixIcon: Icon(Icons.vpn_key),
                                    hintText: 'Enter Password',
                                    errorStyle: TextStyle(
                                        color: Colors.red[900], fontSize: 15.0),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                      borderSide: BorderSide(color: Colors.grey),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                      borderSide: BorderSide(color: Colors.grey),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 10),
                                child: InkWell(
                                    child: Text(
                                  'Forgot password?',
                                  textScaleFactor: 1.1,
                                  style: TextStyle(
                                    color: DarkBlue,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16,
                                  ),
                                )),
                              ),
                              Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 30, vertical: 20),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Container(
                                      color: Colors.blueAccent,
                                      height: 40,
                                      width: 360,
                                      child: MaterialButton(
                                        child: Text(
                                          'Sign In',
                                          style: TextStyle(
                                              color: White, fontSize: 18),
                                        ),
                                      ),
                                    ),
                                  )),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(bottom: 15),
                                  child: Align(
                                    alignment: FractionalOffset.center,
                                    child: RichText(
                                      text: TextSpan(
                                        children: <TextSpan>[
                                          TextSpan(
                                              text: 'Don\'t have an account yet? ',
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
                )
              ],
            ),
          )
        ],
      ),
    ];
  }

  List<Widget> LoginPageChildrenShrinked(screenHeight,screenWidth) {
    return <Widget>[
      Container(
        color: PopBlue,
        height: screenHeight,
        width: screenWidth,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                height: 400,
                width: 450,
                child: Card(
                  elevation: 10,
                  child: Form(
                    child: Column(
                      children: [
                        Container(
                          height: 50,
                          width: 500,
                          color: DarkBlue,
                          child: Center(
                            child: Text(
                              'Login',
                              style: TextStyle(
                                color: White,
                                fontSize: 30,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 40, right: 30, left: 30),
                          child: TextFormField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.email),
                              hintText: 'Enter Email',
                              errorStyle: TextStyle(
                                  color: Colors.red[900], fontSize: 15.0),
                              enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 20, right: 30, left: 30),
                          child: TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.vpn_key),
                              hintText: 'Enter Password',
                              errorStyle: TextStyle(
                                  color: Colors.red[900], fontSize: 15.0),
                              enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: InkWell(
                              child: Text(
                            'Forgot password?',
                            textScaleFactor: 1.1,
                            style: TextStyle(
                              color: DarkBlue,
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                            ),
                          )),
                        ),
                        Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 30, vertical: 20),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Container(
                                color: Colors.blueAccent,
                                height: 40,
                                width: 360,
                                child: MaterialButton(
                                  child: Text(
                                    'Sign In',
                                    style:
                                        TextStyle(color: White, fontSize: 18),
                                  ),
                                ),
                              ),
                            )),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 15),
                            child: Align(
                              alignment: FractionalOffset.center,
                              child: RichText(
                                text: TextSpan(
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: 'Don\'t have an account yet? ',
                                        style: TextStyle(
                                            fontSize: 17, color: Colors.black)),
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
            )
          ],
        ),
      )
    ];
  }
}
