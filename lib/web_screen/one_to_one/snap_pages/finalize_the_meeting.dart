import 'package:aztlan/shared/colors.dart';
import 'package:flutter/material.dart';

class OneToOnePageThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Center(
            child: Text('Finalize The Meeting',style: TextStyle(fontSize: 18,),),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('images/work.png')
                      )
                  ),
                ),
                SizedBox(height: 20,),
                Text('Person 1',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                Text('Brand Manager',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w100),),
                Text('Morgan Stanely',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w100),),
              ],
            ),
            Column(
              children: [
                Text('8th May',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                Text('9:45 AM - 10:00 AM'),
              ],
            ),
            Column(
              children: [
                Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('images/oneonone.png')
                      )
                  ),
                ),
                SizedBox(height: 20,),
                Text('Person 2',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                Text('Senior Software Developer',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w100),),
                Text('KPMG',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w100),),
              ],
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Center(
            child: RaisedButton(
              onPressed: () {},
              color: DarkBlue,
              child: Text(
                'Confirm',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: White,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
