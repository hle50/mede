import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:intl/intl.dart';

class Result1 extends StatelessWidget {
  static final String routeName = 'Result1';

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromRGBO(232, 234, 239, 1),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: Colors.white,
        title: Text(
          "Result",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 20, left: 20, right: 20),
//              color: Color.fromRGBO(77, 158, 46, 0.9),
              padding: EdgeInsets.symmetric(vertical: 30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromRGBO(77, 158, 46, 0.9),
                boxShadow: [
                  BoxShadow(
                      color: Color.fromRGBO(77, 158, 46, 0.9), spreadRadius: 3),
                ],
              ),
              child: Center(
                child: CircularPercentIndicator(
                  radius: 250,
                  lineWidth: 13.0,
                  animation: true,
                  percent: 0.74,
                  progressColor: Colors.white,
                  backgroundColor: Colors.red,
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
            SizedBox(height: 20,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              padding: EdgeInsets.symmetric(vertical: 20.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(color: Colors.white, spreadRadius: 3),
                ],
              ),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Image.asset('assets/images/image7.png'),
                      ),
                      Expanded(
                        flex: 3,
                        child: Container(
                          padding: EdgeInsets.only(right: 20.0),
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
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 40.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        border: Border.all(
                          style: BorderStyle.solid,
                          width: 1,
                          color: Color.fromRGBO(77, 158, 46, 0.9),
                        ),
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
                  SizedBox(
                    height: 20.0,
                  ),
                  Divider(color: Color.fromRGBO(232, 234, 239, 1)),
                  Container(
                    margin: EdgeInsets.only(top: 10.0),
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                      'A MedeGuide can be attempted as many times as needed until it has been successfully completed. A certificate of completion will only be awarded once you have achieved this result.',
                      style: TextStyle(
                        fontSize: 15,
                        color: Color.fromRGBO(155, 164, 183, 1),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: ' This MedeGuide was last revised on ',
                            style: TextStyle(
                              color: Color.fromRGBO(155, 164, 183, 1),
                              fontSize: 15,
                            ),
                          ),
                          TextSpan(
                            text:
                                "${DateFormat('dd MMMM yyyy').format(DateTime.now())}.",
                            style: TextStyle(
                              color: Color.fromRGBO(29, 115, 168, 1),
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: "This attempt was made on ",
                            style: TextStyle(
                              color: Color.fromRGBO(155, 164, 183, 1),
                              fontSize: 15,
                            ),
                          ),
                          TextSpan(
                            text:
                                "${DateFormat('dd MMMM yyyy').format(DateTime.now())}.",
                            style: TextStyle(
                              color: Color.fromRGBO(29, 115, 168, 1),
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 20.0),
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    width: double.infinity,
                    child: FlatButton(
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text('REVIEW MEDEGUIDE',
                            style: TextStyle(color: Colors.white)),
                      ),
                      textColor: Colors.white,
                      color: Color.fromRGBO(29, 115, 168, 1),
                      shape: RoundedRectangleBorder(
                          side: BorderSide(
                              color: Color.fromRGBO(29, 115, 168, 1),
                              width: 1,
                              style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
