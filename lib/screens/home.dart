import 'package:flutter/material.dart';
import 'package:medehealth/components/dashboard_item_list.dart';
import 'package:medehealth/components/side_menu.dart';

class Home extends StatefulWidget {
  static final routeName = "Home";
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Color.fromRGBO(232, 234, 239, 1),
      appBar: AppBar(
        title: Text(
          'MedeHealth',
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.black,
          ),
          onPressed: () => _scaffoldKey.currentState.openDrawer(),
        ),
        backgroundColor: Colors.white,
        actions: <Widget>[
          Icon(
            Icons.search,
            color: Colors.black,
            size: 30,
          )
        ],
      ),
      drawer: SideMenu(),
      body: DefaultTabController(
        length: 3,
        child: new Scaffold(
          backgroundColor: Color.fromRGBO(232, 234, 239, 1),
          appBar: new PreferredSize(
            preferredSize: Size.fromHeight(kToolbarHeight),
            child: new Container(
              height: 50.0,
              color: Colors.white,
              child: new TabBar(
                labelColor: Color.fromRGBO(29, 115, 168, 1),
                unselectedLabelColor: Color.fromRGBO(155, 164, 183, 1),
                indicatorColor: Color.fromRGBO(29, 115, 168, 1),
                tabs: [
                  Tab(
                    text: 'All',
                  ),
                  Tab(
                    text: 'Current',
                  ),
                  Tab(
                    text: 'Complete',
                  ),
                ],
              ),
            ),
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: TabBarView(
              children: [
                DashboardItemList(),
                DashboardItemList(),
                DashboardItemList(),     
              ],
            ),
          ),
        ),
      ),
    );
  }
}
