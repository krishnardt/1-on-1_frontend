//import 'dart:html';
import 'package:aztlan/shared/colors.dart';
import 'package:aztlan/web_screen/Dialog_boxes/dialog_box.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'one_to_one_content.dart';
import 'package:intl/intl.dart';

class OneToOne extends StatelessWidget {
  final double screenHeight, screenWidth;

  const OneToOne({Key key, this.screenHeight, this.screenWidth})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 800) {
        return Stack(children: [
          Container(
              width: screenWidth,
              height: screenHeight * 0.3,
              color: Colors.indigo[400]),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: OneToOnePageChildren(context),
          ),
        ]);
      } else {
        return Column(children: OneToOnePageChildren(context));
      }
    });
  }

  List<Widget> OneToOnePageChildren(BuildContext context) {
    return <Widget>[
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        height: 170,
        width: 180,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              child: Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Container(
                  child: Center(
                      child: Text(
                    'Profile',
                    style: TextStyle(fontSize: 20),
                  )),
                ),
              ),
            ),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  child: Center(
                      child: Text(
                    'Meeting Archive',
                    style: TextStyle(fontSize: 20),
                  )),
                ),
              ),
            ),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  child: Center(
                      child: Text(
                    'People',
                    style: TextStyle(fontSize: 20),
                  )),
                ),
              ),
            ),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  child: Center(
                      child: Text(
                    'My Schedule',
                    style: TextStyle(fontSize: 20),
                  )),
                ),
              ),
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return CustomDialog(
                        screenWidth: screenWidth,
                        screenHeight: screenHeight,
                      );
                    });
              },
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 80,
        ),
        child: Container(
            height: screenHeight * 0.7,
            width: screenWidth * 0.5,
            child: OneToOneContent(
              width: screenWidth * 0.5,
              height: screenHeight * 0.7,
            )),
      ),
      SideCalendar(
        screenHeight: screenHeight,
        screenWidth: screenWidth,
      )
    ];
  }
}

class SideCalendar extends StatefulWidget {
  final double screenHeight, screenWidth;

  const SideCalendar({Key key, this.screenHeight, this.screenWidth})
      : super(key: key);

  @override
  _SideCalendarState createState() => _SideCalendarState();
}

class _SideCalendarState extends State<SideCalendar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.screenHeight,
      width: widget.screenWidth*0.25,
      color: White,
      child: TableCalendar(
        locale: 'en_US',
        initialCalendarFormat: CalendarFormat.month,
        formatAnimation: FormatAnimation.slide,
        startingDayOfWeek: StartingDayOfWeek.monday,
        availableGestures: AvailableGestures.none, //disable swipe between days
        availableCalendarFormats: const {
          CalendarFormat.month: 'Month',
        },
        calendarStyle: CalendarStyle(
          weekdayStyle: TextStyle(color: Colors.black),
          weekendStyle: TextStyle(color: Colors.green[600]),
          outsideStyle: TextStyle(color: Colors.grey.shade400),
          unavailableStyle: TextStyle(color: Colors.grey.shade400),
          outsideWeekendStyle: TextStyle(color: Colors.grey.shade400),
        ),
        daysOfWeekStyle: DaysOfWeekStyle(
          dowTextBuilder: (date, locale) {
            return DateFormat.E(locale).format(date).substring(0, 2);
          },
          weekdayStyle: TextStyle(color: DarkBlue),
          weekendStyle: TextStyle(color: DarkBlue),
        ),
        headerVisible: true,
        builders: CalendarBuilders(
          selectedDayBuilder: (context, date, _) {
            return Container(
              decoration: new BoxDecoration(
                color: DarkBlue,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
              ),
              margin: const EdgeInsets.all(4.0),
              width: 80,
              height: 80,
              child: Center(
                child: Text(
                  '${date.day}',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: White,
                  ),
                ),
              ),
            );
          },
        ), calendarController: CalendarController(),
      ),
    );
  }
}
