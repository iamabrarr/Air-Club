import 'package:air_club/Screens/SignInScreen.dart';
import 'package:air_club/SizedConfig/SizedConfig.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: ClipRRect(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.0),),
        child: Drawer(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: size.height * 0.07),
            Padding(
              padding: EdgeInsets.only(left: SizeConfig.widthMultiplier * 15),
              child: Container(
                  height: 60,
                  width: 60,
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/profile.jpg',
                      fit: BoxFit.cover,
                    ),
                  )),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(left: SizeConfig.widthMultiplier * 15),
              child: Text(
                'Dr Lana Rhodes',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
              ),
            ),
            SizedBox(height: 40),
            Container(
              height: 1,
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.grey[400]),
            ),
            SizedBox(height: 30),
            Row(children: [
              SizedBox(width: 50),
              Icon(
                Icons.person_outline,
                size: 25,
              ),
              SizedBox(
                width: 13,
              ),
              Text(
                'My Profile',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
              ),
            ]),
            SizedBox(height: 30),
            Row(children: [
              SizedBox(width: 50),
              Icon(
                Icons.calendar_today_outlined,
                size: 20,
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                'Schedule',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
              ),
            ]),
            SizedBox(height: 30),
            Row(children: [
              SizedBox(width: 50),
              Icon(
                MdiIcons.counter,
                size: 20,
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                'Courses',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
              ),
            ]),
            SizedBox(height: 30),
            Row(children: [
              SizedBox(width: 50),
              Icon(
                Icons.timer,
                size: 20,
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                'History',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
              ),
            ]),
            SizedBox(height: 30),
            Row(children: [
              SizedBox(width: 45),
              Icon(
                Icons.settings_outlined,
                size: 25,
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                'Settings',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
              ),
            ]),
            SizedBox(height: 30),
            Row(children: [
              SizedBox(width: 45),
              Icon(
                MdiIcons.shieldCheck,
                size: 25,
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                'Privacy Policy',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
              ),
            ]),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(bottom: SizeConfig.heightMultiplier * 2),
              child: Row(
                children: [
                  SizedBox(width: 30),
                  Icon(Icons.logout),
                  SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignInScreen(
                                      size: size,
                                    )));
                      },
                      child: Container(
                          child: Text(
                        'Log Out',
                        style: TextStyle(fontSize: 20),
                      )))
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}
