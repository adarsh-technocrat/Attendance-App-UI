import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class DefaultSubjectCard extends StatelessWidget {
  final String subjectName;
  final double percent;
  final String classAttended;
  final String textPercent;
  final Color color;
  final Function onTap;

  const DefaultSubjectCard(
      {Key key,
      this.subjectName,
      this.percent,
      this.classAttended,
      this.textPercent,
      this.color,
      this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 95,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.only(left: 15, right: 15),
        decoration: BoxDecoration(
            color: Color(0xff1C2E4C), borderRadius: BorderRadius.circular(20)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 8),
              child: Text(
                subjectName,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: new LinearPercentIndicator(
                width: MediaQuery.of(context).size.width - 85,
                animation: true,
                lineHeight: 13.0,
                animationDuration: 2000,
                backgroundColor: Color(0xff0B1732),
                percent: percent,
                center: Text(
                  // "90.0%",
                  textPercent,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontWeight: FontWeight.bold),
                ),
                linearStrokeCap: LinearStrokeCap.roundAll,
                progressColor: color,
              ),
            ),
            Center(
              child: Text(
                classAttended,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
