import 'package:air_club/SizedConfig/SizedConfig.dart';
import 'package:air_club/models/HomeScreenIcons.dart';
import 'package:flutter/material.dart';
class AppCard extends StatelessWidget {
  const AppCard({
    Key key,
    @required this.details,
  }) : super(key: key);
  final MainScreenIcons details;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: SizeConfig.heightMultiplier*2,
          left: SizeConfig.widthMultiplier * 4,
          right: SizeConfig.widthMultiplier*4,
          bottom: SizeConfig.heightMultiplier*2,
          ),
      child: Container(
        height: SizeConfig.heightMultiplier*5,
        width: SizeConfig.widthMultiplier*10,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 0),
                blurRadius: 15,
                color: Colors.grey[300],
              )
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              details.image,
            ),
            SizedBox(height: 30),
            Text(details.title, style: TextStyle(color: Colors.black)),
            // SizedBox(height : 20)
          ],
        ),
      ),
    );
  }
}
