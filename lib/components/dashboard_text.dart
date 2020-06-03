import 'package:flutter/material.dart';

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
