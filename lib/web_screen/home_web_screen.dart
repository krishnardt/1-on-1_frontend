import 'package:aztlan/shared/colors.dart';
import 'package:flutter/material.dart';
import 'package:aztlan/extensions/hover_extension.dart';

class LandingPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth>800) {
            return Column(
              children: [
                Container(
                  width: constraints.maxWidth,
                  color: PopBlue,
                  child: Row(
                  children: PageChildren(constraints.biggest.width/2,context),
                  ),
                ),
              ],
            );
          } else {
            return Column(
              children: [
                Container(
                  color: PopBlue,
                  child: Column(
                    children: PageChildren(constraints.biggest.width,context),
                  ),
                ),
              ],
            );
          }
        },
      ),
    ]);
  }

  List<Widget> PageChildren(double curWidth,BuildContext context) {
    return <Widget>[
      Container(
        child: Image.asset(
          "images/workflow.png",
          width: curWidth,
        ),
      ),
      //SizedBox(width: 80,height: 40,),
      Container(
        width: curWidth,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  'SHARE YOUR\n' + 'OFFICIAL UPDATES AT EASE',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      height: 0.9,
                      fontSize: 40,
                      color: White),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 10),
              child: Text(
                'At Aztlan, we tend to streamline the process of sharing updates and feedback with your colleagues.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, color: White),
              ),
            ),Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlatButton(
                child: Text(
                  'Getting Started',
                  style: TextStyle(fontSize: 16),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                padding: EdgeInsets.all(10),
                color: White,
                textColor: DarkBlue,
                onPressed: () {
                  Navigator.of(context).pushNamed('/log');
                },
              ).showHoverCursor.moveUpOnHover,
            ),
          ],
        ),
      ),
    ];
  }
}


