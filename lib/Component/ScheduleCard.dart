import 'package:flutter/material.dart';

class ScheduleCard extends StatelessWidget {
  final String classStatus;
  final String time;
  final String date;
  final Color color;
  final bool isblackColor;

  const ScheduleCard(
      {Key key,
      @required this.classStatus,
      @required this.time,
      @required this.date,
      @required this.color,
      this.isblackColor = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Container(
        width: 120,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(15)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(11.0),
              child: Text(
                classStatus,
                style: TextStyle(
                    color: isblackColor ? Color(0xff25674C) : Color(0xffACB6CF),
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 11),
              child: Text(
                time,
                style: TextStyle(
                    color: isblackColor ? Colors.black : Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: EdgeInsets.only(left: 11),
              child: Text(
                date,
                style: TextStyle(
                    color: isblackColor ? Colors.black : Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
