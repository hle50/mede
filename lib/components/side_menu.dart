import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.

        child: ListView(
      // Important: Remove any padding from the ListView.
      padding: EdgeInsets.zero,
      children: <Widget>[
        Container(
          height: 140,
          child: DrawerHeader(
            child: ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 0.0),
              leading: CircleAvatar(
                  child: ClipRRect(
                child: Image.asset("assets/images/img_avatar2.png"),
                borderRadius: new BorderRadius.circular(100.0),
              )),
              title: Text('Woo Lee Choi'),
              subtitle: Text('099-999-999'),
              onTap: () {
                Navigator.of(context).pushNamed('Profile');
              },
            ),
            decoration: BoxDecoration(
              color: Color.fromRGBO(232, 234, 239, 1),
            ),
          ),
        ),
        ListTile(
          title: Text('Result 1'),
          onTap: () {
            Navigator.of(context).pushNamed('Result1');
          },
        ),
        ListTile(
          title: Text('Result 2'),
          onTap: () {
            Navigator.of(context).pushNamed('Result2');
          },
        ),
      ],
    ));
  }
}
