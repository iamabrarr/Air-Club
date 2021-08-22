import 'package:air_club/Screens/SearchScreen.dart';
import 'package:air_club/SizedConfig/SizedConfig.dart';
import 'package:air_club/components/MainDrawer.dart';
import 'package:air_club/models/HomeScreenIcons.dart';
import 'package:flutter/material.dart';
import 'AppCard.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      drawer: MainDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.only(left: SizeConfig.widthMultiplier * 5),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Categories',
                  style: TextStyle(
                      fontSize: SizeConfig.textMultiplier * 3,
                      color: Colors.black,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          GridView.builder(
              itemCount: bars.length,
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.93,
              ),
              itemBuilder: (context, index) => AppCard(
                    details: bars[index],
                  ))
        ],
      ),
    );
  }
}
