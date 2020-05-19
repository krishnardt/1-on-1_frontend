import 'package:aztlan/shared/colors.dart';
import 'package:aztlan/shared/text_form.dart';
import 'package:flutter/material.dart';

class OneToOnePageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Center(
            child: Text('Pick a person to set the meeting',style: TextStyle(fontSize: 18,),),
          ),
        ),
        Column(
          children: [
            Container(
              width: 400,
              child: TextFormField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Black, width: 1.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Black, width: 1.0),
                  ),
                  hintText: 'Search a contact',
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
