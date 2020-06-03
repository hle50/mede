import 'package:flutter/material.dart';
import './dashboard_text.dart';

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
        child: InkWell(
          onTap: () {
            Navigator.pushReplacementNamed(context, "Home");
          },
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
      ),
    );
  }
}
