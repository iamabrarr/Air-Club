import 'package:air_club/SizedConfig/SizedConfig.dart';
import 'package:flutter/material.dart';
class EventCard extends StatelessWidget {
  const EventCard({
    Key key,
    @required this.size,
    @required this.color,
  }) : super(key: key);

  final Size size;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: size.width * 0.25,
        ),
        Container(
          height: size.height * 0.13,
          width: size.width * 0.7,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Instructor Name',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Cessna 152'.toUpperCase(),
                    style: TextStyle(
                        color: Colors.grey[500],
                        fontWeight: FontWeight.w300),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    'Student Name',
                    style: TextStyle(fontWeight: FontWeight.w400),
                  )
                ],
              ),
              Spacer(),
              Container(
                height: 50,
                width: 50,
                child: Padding(
                  padding: EdgeInsets.only(
                      top: SizeConfig.heightMultiplier * 0.5,
                      right: SizeConfig.widthMultiplier * 1.5),
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/LanaRhodes.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

