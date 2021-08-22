import 'package:air_club/components/MainDrawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_calendar/flutter_advanced_calendar.dart';
import 'package:air_club/SizedConfig/SizedConfig.dart';
import '../SearchScreen.dart';
import 'Components/EventCard.dart';
import 'Components/EventTimeWithLine.dart';

class Calendar extends StatefulWidget {
  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  final _calendarControllerToday = AdvancedCalendarController.today();
  final _calendarControllerCustom =
      AdvancedCalendarController.custom(DateTime.now());
  DateTime _dateTime;
  Color color;
  String time;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        drawer: MainDrawer(),
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          actions: [
            IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SearchScreen()));
                })
          ],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 10,
                        color: Colors.grey[300],
                      )
                    ]),
                child: AdvancedCalendar(
                  controller: _calendarControllerCustom,
                  weekLineHeight: 48.0,
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.only(left: SizeConfig.widthMultiplier * 10),
                child: Text(
                  'Today,Tue 02',
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(height: 20),
              EventTimeWithContainer(time: '09 AM', size: size),
              SizedBox(
                height: 3,
              ),
              EventCard(size: size, color: Colors.pink[50]),
              SizedBox(
                height: 3,
              ),
              EventTimeWithContainer(time: '10 AM', size: size),
              SizedBox(height: 10),
              Container(
                height: 30,
                // color: Colors.blueAccent,
                child: Stack(
                  children: [
                    Center(
                      child: Container(
                        height: 2,
                        width: size.width * 1,
                        decoration: BoxDecoration(color: Colors.blue),
                      ),
                    ),
                    Positioned(
                      left: 80,
                      top: 8,
                      child: Container(
                        height: 15,
                        width: 18,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              EventTimeWithContainer(time: '01 PM', size: size),
              SizedBox(
                height: 3,
              ),
              EventCard(size: size, color: Colors.yellow[100]),
              SizedBox(
                height: 10,
              ),
              EventTimeWithContainer(time: '02 PM', size: size),
              SizedBox(
                height: 25,
              ),
              EventTimeWithContainer(time: '03 PM', size: size),
              SizedBox(height: 10),
              EventCard(size: size, color: Colors.green[100]),
              SizedBox(
                height: 10,
              ),
              EventTimeWithContainer(time: '04 PM', size: size),
              SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      ),
    );
  }
}
