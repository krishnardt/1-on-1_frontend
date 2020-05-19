import 'package:aztlan/shared/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';


class OneToOnePageTwo extends StatefulWidget {
  @override
  _OneToOnePageTwoState createState() => _OneToOnePageTwoState();
}

class _OneToOnePageTwoState extends State<OneToOnePageTwo> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Center(
            child: Text('Set Meeting Date and Time',style: TextStyle(fontSize: 18,color: Colors.black),),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                border: Border.all(
                  color: Colors.grey[400],
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
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
                  weekendStyle: TextStyle(color: Colors.green[600],fontWeight: FontWeight.bold ),
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
            ),
            Column(
              children: [
                RaisedButton(
                  onPressed: () {},
                  color: Colors.blue[200],
                  child: Row(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        '15 Mins',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                        size: 15,
                      )
                    ],
                  ),
                ),
                RaisedButton(
                  onPressed: () {},
                  color: Colors.blue[400],
                  child: Row(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        '30 Mins',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                        size: 15,
                      )
                    ],
                  ),
                ),
                RaisedButton(
                  onPressed: () {},
                  color: Colors.blue[700],
                  child: Row(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        '45 Mins',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                        size: 15,
                      )
                    ],
                  ),
                ),
                RaisedButton(
                  onPressed: () {},
                  color: Colors.blue[900],
                  child: Row(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        '60 Mins',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                        size: 15,
                      )
                    ],
                  ),
                ),
                RaisedButton(
                  onPressed: () {},
                  color: Colors.deepPurple[600],
                  child: Row(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Custom',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                        size: 15,
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
