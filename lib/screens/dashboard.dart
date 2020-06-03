import 'package:flutter/material.dart';
import '../components/dashboard_card.dart';

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


