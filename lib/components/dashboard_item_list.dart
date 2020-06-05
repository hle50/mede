import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:intl/intl.dart';

class DashboardItemList extends StatefulWidget {
  DashboardItemList({Key key}) : super(key: key);

  @override
  _DashboardItemListState createState() => _DashboardItemListState();
}

class _DashboardItemListState extends State<DashboardItemList> {
  final list = ["test 1", "test 2", "test 3", "test 4"];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  child: Row(
                    children: <Widget>[
                      InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.view_compact,
                          size: 30,
                          color: Color.fromRGBO(29, 29, 29, 1),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.view_stream,
                          size: 30,
                          color: Color.fromRGBO(29, 29, 29, 0.3),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  child: InkWell(
                    onTap: () {},
                    child: Icon(
                      Icons.tune,
                      size: 30,
                      color: Color.fromRGBO(29, 29, 29, 1),
                    ),
                  ),
                )
              ],
            ),
            Flexible(
              child: ListView.builder(
                itemCount: 200,
                itemBuilder: (context, int idx) {
                  return MCard();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MCard extends StatelessWidget {
  const MCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15.0),
      child: Card(
          shadowColor: Colors.white,
          elevation: 5,
          child: InkWell(
            onTap: () {
              Navigator.pushNamed(context, "Introduction");
            },
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          "https://www.bbcgoodfood.com/sites/default/files/recipe-collections/collection-image/2013/05/chorizo-mozarella-gnocchi-bake-cropped.jpg",
                          width: 100,
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Absconding / Missing Person",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                  color: Color.fromRGBO(29, 29, 29, 1),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Badge(
                                  badgeColor: Colors.orangeAccent,
                                  shape: BadgeShape.square,
                                  borderRadius: 5,
                                  toAnimate: false,
                                  badgeContent: Text('LEGISLATED',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 10)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Divider(
                    thickness: 2.0,
                    color: Color.fromRGBO(232, 234, 239, 1),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Container(
                      child: Row(
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(bottom: 10),
                                width: 120,
                                child: MTitle(
                                  text: "category",
                                ),
                              ),
                              Container(
                                  width: 120,
                                  child: MTitle(
                                    text: "status",
                                  )),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                  margin: EdgeInsets.only(bottom: 10),
                                  child: MSub(
                                    text: "Mandantory training",
                                  )),
                              Container(
                                  child: MSub(
                                text:
                                    "Complete: ${DateFormat("dd-MMM-yyyy").format(DateTime.now())}",
                              )),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}

class MSub extends StatelessWidget {
  final String text;
  const MSub({
    Key key,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Color.fromRGBO(155, 164, 183, 1),
      ),
    );
  }
}

class MTitle extends StatelessWidget {
  final String text;

  const MTitle({
    Key key,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      this.text.toUpperCase(),
      style: TextStyle(
        color: Color.fromRGBO(155, 164, 183, 1),
        fontWeight: FontWeight.w500,
        fontSize: 15,
      ),
    );
  }
}
