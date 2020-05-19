import 'package:aztlan/shared/colors.dart';
import 'package:flutter/material.dart';

class CustomDialog extends StatelessWidget {
  final double screenHeight, screenWidth;

  const CustomDialog({Key key, this.screenHeight, this.screenWidth})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height= screenHeight * 0.5;
    double width= screenWidth * 0.4;

    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
        height: height,
        width: width,
        child: Column(
          children: [
            Container(
              width: width,
              height: height*0.15,
              color: DarkBlue,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Spacer(flex: 3,),
                    Center(
                      child: Text(
                        'My Schedule',
                        style: TextStyle(
                            color: White, fontSize: 24, fontWeight: FontWeight.w400),
                      ),
                    ),Spacer(flex: 2,),
                    Expanded(
                      child: IconButton(
                        icon: Icon(Icons.clear),
                        color: White,
                        onPressed: ()=>Navigator.of(context).pop(),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  Container(height: 250,width: 350,color: Colors.red,child: Center(child: Text('Calander View',style: TextStyle(color: White),),),),
                  Container(height: 250,width: 200,color: Colors.green,child: Center(child: Text('My day schedule',style: TextStyle(color: White),),)),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
