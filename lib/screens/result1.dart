import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Result1 extends StatelessWidget {
  static final String routeName = 'Result1';

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromRGBO(232, 234, 239, 1),
      appBar: AppBar(
        title: Text('Result'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 20, left: 20, right: 20),
              padding: EdgeInsets.symmetric(vertical: 30),
              color: Color.fromRGBO(77, 158, 46, 0.9),
              child: Center(
                child: CircularPercentIndicator(
                  radius: 250,
                  lineWidth: 13.0,
                  animation: true,
                  percent: 0.74,
                  progressColor: Colors.white,
                  backgroundColor: Color.fromRGBO(77, 158, 46, 1),
                  center: new Text(
                    "74.0%",
                    style: new TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40.0,
                        color: Colors.white),
                  ),
                  footer: Column(
                    children: <Widget>[
                      Text(
                        "Congratulations!",
                        style: new TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30.0,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text(
                            'You have successfully completed this MedeGuide.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 15.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  circularStrokeCap: CircularStrokeCap.round,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(color: Colors.white, spreadRadius: 3),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Image.asset('assets/images/image7.png'),
                  ),
                  Expanded(
                    flex: 3,
                    child: Column(
                      children: <Widget>[
                        Text(
                          'You have been awarded a certificate of completion for this MedeGuide',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          ' This result adds 1 RCNA CNE point towards your professional development requirements',
                          style: TextStyle(
                              fontSize: 15,
                              color: Color.fromRGBO(155, 164, 183, 1)),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 300,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(color: Colors.white, spreadRadius: 3),
                  ],
                ),
                child: FlatButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.file_download,
                    color: Color.fromRGBO(77, 158, 46, 0.9),
                  ),
                  label: Text(
                    'DOWNLOAD',
                    style: TextStyle(
                      color: Color.fromRGBO(77, 158, 46, 0.9),
                    ),
                  ),
                  color: Colors.white,
                ),
              ),
            ),
            Divider(color: Color.fromRGBO(232, 234, 239, 1)),
          ],
        ),
      ),
    );
  }
}
