import 'package:flutter/material.dart';
import 'package:medehealth/screens/dashboard.dart';
import 'package:medehealth/screens/profile.dart';
import './screens/login.dart';
import './screens/home.dart';
import './screens/introduction.dart';
import './screens/details.dart';
import './screens/result1.dart';
import './screens/result2.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Login(),
      routes: {
        DashBoard.routeName: (context) => DashBoard(),
        Home.routeName: (context) => Home(),
        Introduction.routeName: (context) => Introduction(),
        Details.routeName: (context) => Details(),
        Profile.routeName: (context) => Profile(),
        Result1.routeName: (context) => Result1(),
        Result2.routeName: (context) => Result2(),

      },
    );
  }
}
