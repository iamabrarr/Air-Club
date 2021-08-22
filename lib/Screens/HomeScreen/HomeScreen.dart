import 'package:air_club/Screens/CalendarScreen/Calendar.dart';
import 'package:air_club/SizedConfig/SizedConfig.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import '../Chats.dart';
import '../Notifications.dart';
import '../add.dart';
import 'HomeBody.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key key,
  }) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  int _isSelectedIndex = 0;
  List<Widget> _widgetOptions = [
    HomeBody(),
    Calendar(),
    Add(),
    Notifications(),
    Chats(),
  ];
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: _widgetOptions.elementAt(_isSelectedIndex),
          bottomNavigationBar: CurvedNavigationBar(
              backgroundColor: Colors.grey[100],
              animationDuration: const Duration(milliseconds: 500),
              items: const <Widget>[
                Icon(
                  Icons.home_outlined,
                  size: 30,
                ),
                Icon(
                  Icons.calendar_today_outlined,
                ),
                Icon(
                  Icons.add,
                ),
                Icon(
                  Icons.notifications_none_outlined,
                ),
                Icon(
                  Icons.chat_bubble_outline,
                ),
              ],
              onTap: (index) {
                setState(() {
                  _isSelectedIndex = index;
                });
              }),
        ),
        Column(
          children: [
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                    splashColor: Colors.blue,
                    child: Icon(Icons.add),
                    onPressed: () {
                      _bottomSheet(context);
                    }),
              ],
            ),
            SizedBox(
              height: 30,
            )
          ],
        )
      ],
    );
  }
}
void _bottomSheet(context) {
  showModalBottomSheet(
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight:  Radius.circular(30),
        )
      ),
      context: context,
      builder: (builder) {
        return SafeArea(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 4,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: SizeConfig.widthMultiplier * 5,
                      ),
                      Text(
                        'Add New Event',
                        style:
                            TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                      ),
                      Spacer(),
                      IconButton(
                          icon: Icon(
                            Icons.cancel_outlined,
                            size: 30,
                          ),
                          onPressed: () {})
                    ],
                  ),
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 2,
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: SizeConfig.widthMultiplier * 5),
                    child: Text(
                      'Flight Instructor',
                      style: TextStyle(fontWeight: FontWeight.w300),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: SizeConfig.widthMultiplier * 5),
                    child: Row(
                      children: [
                        Container(
                          height: 30,
                          width: SizeConfig.widthMultiplier * 90,
                          child: TextField(
                            decoration: InputDecoration(
                              suffixIcon: Icon(
                                Icons.arrow_drop_down,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 4,
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: SizeConfig.widthMultiplier * 5),
                    child: Text(
                      'Student',
                      style: TextStyle(fontWeight: FontWeight.w300),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: SizeConfig.widthMultiplier * 5),
                    child: Row(
                      children: [
                        Container(
                          height: 30,
                          width: SizeConfig.widthMultiplier * 90,
                          child: TextField(),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 4,
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: SizeConfig.widthMultiplier * 5),
                    child: Text(
                      'Aircraft',
                      style: TextStyle(fontWeight: FontWeight.w300),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: SizeConfig.widthMultiplier * 5),
                    child: Row(
                      children: [
                        Container(
                          height: 30,
                          width: SizeConfig.widthMultiplier * 90,
                          child: TextField(
                            decoration: InputDecoration(
                              suffixIcon: Icon(
                                Icons.arrow_drop_down,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 4,
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: SizeConfig.widthMultiplier * 5),
                    child: Text(
                      'Date',
                      style: TextStyle(fontWeight: FontWeight.w300),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: SizeConfig.widthMultiplier * 5),
                    child: Row(
                      children: [
                        Container(
                          height: 30,
                          width: SizeConfig.widthMultiplier * 90,
                          child: TextField(
                            decoration: InputDecoration(
                              suffixIcon: Icon(
                                Icons.arrow_drop_down,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 3,
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                left: SizeConfig.widthMultiplier * 5,),
                            child: Text(
                              'Start Time',
                              style: TextStyle(fontWeight: FontWeight.w300),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: SizeConfig.widthMultiplier * 5,top: SizeConfig.heightMultiplier*1),
                            child: Container(
                              height: SizeConfig.heightMultiplier * 2,
                              width: SizeConfig.widthMultiplier * 40,
                              child: TextField(),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: SizeConfig.widthMultiplier * 6,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                left: SizeConfig.widthMultiplier * 5,),
                            child: Text(
                              'End',
                              style: TextStyle(fontWeight: FontWeight.w300),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: SizeConfig.widthMultiplier * 5,
                                top: SizeConfig.heightMultiplier * 1),
                            child: Container(
                              height: SizeConfig.heightMultiplier * 2,
                              width: SizeConfig.widthMultiplier * 40,
                              child: TextField(),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: SizeConfig.heightMultiplier*10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RawMaterialButton(
                              child: Container(
                                  height: 50,
                                  width: 200,
                                  decoration: BoxDecoration(
                                      color: Colors.blue[600],
                                      borderRadius: BorderRadius.circular(30),
                                      boxShadow: [
                                        BoxShadow(
                                            offset: Offset(0, 2),
                                            blurRadius: 15,
                                            color: Colors.blue[300])
                                      ]),
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        top: SizeConfig.heightMultiplier * 2),
                                    child: Text(
                                      'add'.toUpperCase(),
                                      style: TextStyle(
                                          fontSize: SizeConfig.textMultiplier * 2,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.center,
                                    ),
                                  )),
                              onPressed: () {}),
                    ],
                  ),
                  SizedBox(height : SizeConfig.heightMultiplier*10),
                ],
              ),
            ),
          ),
        );
      });
}

