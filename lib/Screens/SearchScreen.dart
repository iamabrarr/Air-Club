import 'package:air_club/SizedConfig/SizedConfig.dart';
import 'package:flutter/material.dart';

import 'CalendarScreen/Components/EventCard.dart';
import 'CalendarScreen/Components/EventTimeWithLine.dart';

class SignUpMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SearchScreen();
  }
}

class SearchScreen extends StatelessWidget {
  const SearchScreen({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 0,
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(left: size.width * 0.08),
            child: Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 0),
                      blurRadius: 20,
                      color: Colors.grey[300],
                    )
                  ]),
              child: Padding(
                padding: EdgeInsets.only(
                    left: SizeConfig.widthMultiplier * 2,
                    right: SizeConfig.widthMultiplier * 2,
                    top: SizeConfig.heightMultiplier * 0.5),
                child: TextField(
                  onChanged: (value) {},
                  decoration: InputDecoration(
                      hintText: 'Search',
                      hintStyle: TextStyle(fontWeight: FontWeight.w300),
                      border: InputBorder.none,
                      suffixIcon: Icon(
                        Icons.search,
                        color: Colors.grey,
                      )),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: size.width * 0.08,top: size.height*0.050),
            child: Text(
              'Search Result',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: size.width * 0.08,top: size.height*0.020),
            child: Text(
              '"Dr Lana Rhodes"',
              style: TextStyle(
                  color: Colors.grey[600], fontWeight: FontWeight.w400),
            ),
          ),
          SizedBox(height : 30),
          Padding(
            padding: EdgeInsets.only(left: size.width * 0.08,top: size.height*0.010),
            child: Text('Tue 01',style: TextStyle(fontWeight: FontWeight.w700),),
          ),
          SizedBox(height: 20,),
          EventTimeWithContainer(time: '09 AM', size: size),
          SizedBox(
                height: 3,
              ),
              EventCard(size: size, color: Colors.blue[100]),
              SizedBox(height: 3,),
              EventTimeWithContainer(time: '10 AM', size: size),
        ],
      ),
    );
  }
}
