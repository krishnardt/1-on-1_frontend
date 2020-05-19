import 'package:flutter/material.dart';
import 'package:aztlan/shared/colors.dart';
import 'package:aztlan/extensions/hover_extension.dart';

class appbarDesktop extends AppBar {
  appbarDesktop()
      : super(
            title: Padding(
              padding: const EdgeInsets.only(left: 100),
              child: Text(
                'Aztlan',
                style: TextStyle(
                    color: Black, fontSize: 30, fontWeight: FontWeight.w600),
              ),
            ),
            elevation: 1,
            backgroundColor: White,
            actions: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Products', style: TextStyle(color: Black, fontSize: 16))
                      .showHoverCursor
                      .moveUpOnHover,
                  SizedBox(
                    width: 30,
                  ),
                  Text('Workflows',
                          style: TextStyle(color: Black, fontSize: 16))
                      .showHoverCursor
                      .moveUpOnHover,
                  SizedBox(
                    width: 30,
                  ),
                  Text('Login', style: TextStyle(color: Black, fontSize: 16))
                      .showHoverCursor
                        .moveUpOnHover,
                  SizedBox(
                    width: 30,
                  ),
                  Text('Demo',
                          style: TextStyle(
                              color: Black,
                              fontSize: 16,
                              fontWeight: FontWeight.w800))
                      .showHoverCursor
                      .moveUpOnHover,
                  SizedBox(
                    width: 40,
                  ),
                ],
              )
            ]);
}

class appbarMobile extends AppBar {
  appbarMobile()
      : super(
            leading: IconButton(icon: Icon(Icons.menu,color: Black,),
            onPressed: (){
              //open a navigation drawer from here
            },),
            elevation: 1,
            backgroundColor: White,
            title: Text(
              'Aztlan',
              style: TextStyle(
                  color: Black, fontSize: 30, fontWeight: FontWeight.w600),
            ));
}
