import 'package:attendence/Component/Default_title.dart';
import 'package:attendence/Component/SubjectCard.dart';
import 'package:attendence/screens/SubjectDetailPage.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

import 'Components/Contants.dart';
import 'LoginScreen/LoginScree.dart';

class StudentDashBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        elevation: 5,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 40,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset(
                        "assets/47661086.jpg",
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Adarsh Singh",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Student",
                    style: TextStyle(fontSize: 15, color: Colors.grey[800]),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
            ),
            ListTile(
              leading: Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                    color: Colors.green[400], shape: BoxShape.circle),
                child: Center(
                  child: Icon(
                    Icons.check,
                    size: 10,
                    color: Colors.white,
                  ),
                ),
              ),
              title: Text(
                "Available",
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Color(0xff0B1732),
      appBar: buildAppBar(context),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                buildDateContainer(context),
                DefaultTitle(
                  title: "Overall Attendance",
                ),
                Column(
                  children: [
                    buildAttendenceProgressSection(context),
                  ],
                ),
                buildAttendanceDegitIndicator(context),
                DefaultTitle(
                  title: "Subjects",
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 2,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(color: Colors.transparent),
                  child: ListView(
                    physics: NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: DefaultSubjectCard(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SubjectDetailPage(
                                          subjectName: "Dissertation Project",
                                          percent: 0.9,
                                          textPercent: "90%",
                                          cardBackgroundColor:
                                              Colors.green[100],
                                          color: Color(0xff5CE8AA),
                                        )));
                          },
                          color: Color(0xff5CE8AA),
                          classAttended: "40 out of 44 classes attended",
                          subjectName: "Dissertation Project",
                          percent: 0.9,
                          textPercent: "90%",
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: DefaultSubjectCard(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SubjectDetailPage(
                                          subjectName: "Data Warehouse",
                                          percent: 0.23,
                                          cardBackgroundColor: Colors.red[100],
                                          textPercent: "23%",
                                          color: Color(0xffF0596F),
                                        )));
                          },
                          color: Color(0xffF0596F),
                          classAttended: "14 out of 60 classes attended",
                          subjectName: "Data Warehouse",
                          percent: 0.23,
                          textPercent: "23%",
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: DefaultSubjectCard(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SubjectDetailPage(
                                          subjectName:
                                              "Verification and Validation",
                                          percent: 0.6,
                                          textPercent: "60%",
                                          cardBackgroundColor:
                                              Color(0xffF7C27C),
                                          color: Color(0xffF6B359),
                                        )));
                          },
                          color: Color(0xffF6B359),
                          classAttended: "42 out of 70 classes attended",
                          subjectName: "Verification and Validation",
                          percent: 0.6,
                          textPercent: "60%",
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Container buildAttendanceDegitIndicator(BuildContext context) {
    return Container(
      height: 80,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: Color(0xff192644),
            width: 5,
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "200",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Total",
                style: TextStyle(
                  color: Color(0xff868C9A),
                  fontSize: 12,
                ),
              ),
            ],
          ),
          VerticalDivider(
            color: Colors.white,
            width: 10,
            indent: 5,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "160",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Attended",
                style: TextStyle(
                  color: Color(0xff868C9A),
                  fontSize: 12,
                ),
              ),
            ],
          ),
          VerticalDivider(
            color: Colors.white,
            width: 10,
            indent: 5,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "40",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Skipped",
                style: TextStyle(
                  color: Color(0xff868C9A),
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container buildAttendenceProgressSection(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      height: MediaQuery.of(context).size.height / 4,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: Color(0xff1F2D4C),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(20)),
      child: StreamBuilder<Object>(
          stream: null,
          builder: (context, snapshot) {
            return Column(
              children: [
                Row(
                  children: [
                    buildProgressIndicator(),
                    buildAttendenceIndicatorSction()
                  ],
                ),
              ],
            );
          }),
    );
  }

  Padding buildAttendenceIndicatorSction() {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: Container(
        height: 100,
        width: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                    color: Color(0xff5CE8AA),
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Attendend",
                  style: new TextStyle(fontSize: 18.0, color: Colors.white),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                    color: Color(0xffF0596F),
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Skipped",
                  style: new TextStyle(fontSize: 18.0, color: Colors.white),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Padding buildProgressIndicator() {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: CircularPercentIndicator(
        radius: 180.0,
        animation: true,
        animationDuration: 1200,
        lineWidth: 20.0,
        backgroundColor: Color(0xffF0596F),
        progressColor: Color(0xff5CE8AA),
        percent: 0.8,
        center: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            new Text(
              "80%",
              style: new TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color: Colors.white),
            ),
            SizedBox(
              height: 5,
            ),
            new Text(
              "PRESENT",
              style: new TextStyle(fontSize: 12.0, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }

  Container buildDateContainer(BuildContext context) {
    return Container(
      height: 80,
      width: MediaQuery.of(context).size.width,
      color: Colors.transparent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 5),
            child: Text(
              "Friday",
              style: TextStyle(color: Colors.grey[200]),
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(left: 15, top: 10),
              child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: "09",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 30,
                    ),
                  ),
                  WidgetSpan(
                      child: Transform.translate(
                    offset: Offset(2, -4),
                    child: Text(
                      "th   ",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        fontSize: 30,
                      ),
                    ),
                  )),
                  TextSpan(
                    text: "October 2020",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                ]),
              )),
        ],
      ),
    );
  }

  AppBar buildAppBar(context) {
    return AppBar(
      actions: [
        PopupMenuButton<String>(
          onSelected: (choice) {
            if (choice == Constants.Subscribe) {
              print('Report');
            } else if (choice == Constants.SignOut) {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (contaxt) => LoginScreen()));
            }
          },
          itemBuilder: (BuildContext context) {
            return Constants.choices.map((String choice) {
              return PopupMenuItem<String>(
                value: choice,
                child: Text(choice),
              );
            }).toList();
          },
        )
      ],
      backgroundColor: Color(0xff0B1732),
      centerTitle: true,
      elevation: 0,
      title: Text(
        "Attendance",
        style: TextStyle(color: Colors.white, fontSize: 28),
      ),
    );
  }

  // void choiceAction(String choice,context) {
  //   if (choice == Constants.Subscribe) {
  //     print('Report');
  //   } else if (choice == Constants.SignOut) {
  //      Navigator.pushReplacement(context,
  //             MaterialPageRoute(builder: (contaxt) => LoginScreen()));

  //   }
  // }
}
