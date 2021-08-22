import 'package:air_club/SizedConfig/SizedConfig.dart';
import 'package:flutter/material.dart';
import 'HomeScreen/HomeScreen.dart';
import 'HomeScreen/HomeScreen.dart';
import 'SignUpScreen.dart';
class SignInMain extends StatefulWidget {
  @override
  _SignInMainState createState() => _SignInMainState();
}
class _SignInMainState extends State<SignInMain> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SignInScreen(size: size);
  }
}
class SignInScreen extends StatelessWidget {
  const SignInScreen({
    Key key,
    @required this.size,
  }) : super(key: key);
  final Size size;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: size.height,
            width: size.width,
            decoration: BoxDecoration(
              color: Colors.blue[600],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: SizeConfig.heightMultiplier * 5),
                child: Container(
                  height: 150,
                  width: 150,
                  child: Image.asset('assets/logos/mainlogo.png'),
                ),
              ),
            ],
          ),
          Positioned(
              bottom: 0,
              child: Container(
                height: size.height * 0.75,
                width: size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      'Sign In',
                      style: TextStyle(
                          fontSize: SizeConfig.textMultiplier * 4,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: 60),
                    Container(
                      width: 300,
                      child: Text(
                        'Username',
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ),
                    Container(
                      width: 300,
                      height: 40,
                      child: TextField(
                        onChanged: (value) {},
                        decoration: InputDecoration(
                            suffixIcon: Icon(
                          Icons.person_outline,
                          color: Colors.blue[500],
                        )),
                      ),
                    ),
                    SizedBox(height: 40),
                    Container(
                      width: 300,
                      child: Text(
                        'Password',
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ),
                    Container(
                      width: 300,
                      height: 40,
                      child: TextField(
                        onChanged: (value) {},
                        decoration: InputDecoration(
                            suffixIcon: Icon(
                          Icons.lock_outline,
                          color: Colors.blue[500],
                        )),
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              right: SizeConfig.widthMultiplier * 8),
                          child: GestureDetector(
                              onTap: () {},
                              child: Text('Forget Password?',
                                  style: TextStyle(color: Colors.blue[600]))),
                        ),
                      ],
                    ),
                    SizedBox(height: 80),
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
                                'Sign in'.toUpperCase(),
                                style: TextStyle(
                                    fontSize: SizeConfig.textMultiplier * 2,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                            )),
                        onPressed: () {
                          Navigator.popUntil(context, (route) => false);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeScreen()));
                        }),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have an account? "),
                        GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignUpMain()),
                              );
                            },
                            child: Container(
                              child: Text(
                                'Sign Up',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ))
                      ],
                    ),
                    SizedBox(height: 40)
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
