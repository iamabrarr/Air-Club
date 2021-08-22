import 'package:flutter/material.dart';
class EventTimeWithContainer extends StatelessWidget {
  const EventTimeWithContainer({
    Key key,
    @required this.time,
    @required this.size,
  }) : super(key: key);

  final String time;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 35),
        Text(
          time,
          style: TextStyle(color: Colors.grey[500]),
        ),
        SizedBox(width: 5),
        Container(
          height: 1,
          width: size.width * 0.77,
          decoration: BoxDecoration(color: Colors.grey[300]),
        )
      ],
    );
  }
}
