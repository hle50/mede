import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget {
  static final routeName = "dashboard";
  const DashBoard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(232, 234, 239, 1),
        body: SafeArea(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Image.asset("assets/images/medeLogo.png"),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Text(
                    "CHOOSE THE WAY YOU NEED",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                  ),
                ),
                Row(
                  children: <Widget>[
                    DashboardCard(
                      imagePath: "assets/images/ic1.png",
                      text1: "Allocated",
                      text2: "MedeGuides",
                    ),
                    DashboardCard(
                      imagePath: "assets/images/ic2.png",
                      text1: "My",
                      text2: "MedeGuides",
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    DashboardCard(
                      imagePath: "assets/images/ic3.png",
                      text1: "My",
                      text2: "Certificate",
                    ),
                    DashboardCard(
                      imagePath: "assets/images/ic4.png",
                      text1: "",
                      text2: "Logout",
                    ),
                  ],
                ),
              ],
            ),
          ),
        )));
  }
}

class DashboardCard extends StatelessWidget {
  final String imagePath;
  final String text1;
  final String text2;
  const DashboardCard({
    Key key,
    this.text1,
    this.text2,
    this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        margin: EdgeInsets.all(5),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Image.asset(
                this.imagePath,
                height: 140,
              ),
              DashboardText(text: this.text1),
              DashboardText(text: this.text2),
            ],
          ),
        ),
      ),
    );
  }
}

class DashboardText extends StatelessWidget {
  final String text;

  const DashboardText({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      this.text,
      style: TextStyle(
        color: Color.fromRGBO(155, 164, 183, 1),
        fontSize: 20,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
