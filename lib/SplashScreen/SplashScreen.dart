import 'dart:async';
import 'package:air_club/Screens/SignInScreen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),(){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>SignInMain()));
    });
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          height: size.height,
          width: size.width,
          child:
              Image.asset('assets/logos/splashScreen.png', fit: BoxFit.cover),
        ),
        Column(
          children : [ 
          SizedBox(height : 150),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/logos/mainlogo.png'),
            ],
          ),
          SizedBox(height: 30,),
          CircularProgressIndicator(
            valueColor : AlwaysStoppedAnimation<Color>(Colors.white)
          )
          ])
      ],
    );
  }
}
