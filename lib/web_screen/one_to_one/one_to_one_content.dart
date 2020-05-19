import 'package:aztlan/shared/colors.dart';
import 'package:aztlan/web_screen/one_to_one/snap_pages/snap_pages_list.dart';
import 'package:aztlan/web_screen/web_nav_dots.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OneToOneContent extends StatefulWidget {
  final double width, height;

  const OneToOneContent({Key key, this.width, this.height}) : super(key: key);

  @override
  _OneToOneContentState createState() => _OneToOneContentState();
}

class _OneToOneContentState extends State<OneToOneContent> {
  int _currentPage = 0;
  _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (int i = 0; i < SnapList.length; i++)
              if(i==_currentPage)
                WebNavDots(true,i+1)
              else
                WebNavDots(false,i+1)
          ],
        ),
        Container(
          height: widget.height * 0.8,
          width: widget.width*0.9,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Card(
              margin: EdgeInsets.zero,
                elevation: 10,
                color: White,
                child: PageView.builder(
                  itemCount: SnapList.length,
                    onPageChanged: _onPageChanged,
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context,index){return SnapList[index];}
                    ),
            ),
          ),
        )
      ],
    );
  }
}



