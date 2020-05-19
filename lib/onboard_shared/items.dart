import 'package:aztlan/shared/colors.dart';
import 'package:flutter/material.dart';
import 'package:aztlan/onboard_shared/slide_model/slide_details.dart';
class Items extends StatelessWidget {
  final int index;
  const Items(this.index);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 300,
          height: 300,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(SlideList[index].image),
                  fit: BoxFit.cover
              )
          ),
        ),SizedBox(height: 20,),
        Text(
          SlideList[index].title,
          style: TextStyle(
            fontSize: 22,
            color: White,
          ),
        ),
        SizedBox(height: 10,),
        Text(
          SlideList[index].description,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 14,
            color: White,
          ),
        ),
      ],
    );
  }
}

