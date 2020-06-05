import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class Introduction extends StatelessWidget {
  static final String routeName = "Introduction";
  const Introduction({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
//              title: Text("hello"),
            expandedHeight: 300,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              // title: Text(PageName.APP_BAR),
              centerTitle: false,
              collapseMode: CollapseMode.none,

              background: Container(
                // color: RED,
                constraints: BoxConstraints.expand(height: 100),
                child: Image.network(
                  "https://www.bbcgoodfood.com/sites/default/files/recipe-collections/collection-image/2013/05/chorizo-mozarella-gnocchi-bake-cropped.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(100.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                // color: Colors.red,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Badge(
                        badgeColor: Colors.orangeAccent,
                        shape: BadgeShape.square,
                        borderRadius: 5,
                        toAnimate: false,
                        badgeContent: Text('LEGISLATED',
                            style:
                                TextStyle(color: Colors.white, fontSize: 10)),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Text(
                          "Absconding / Missing Person",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Text(
                        "30-60min to complete",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Header(
                        title: "OVERVIEW",
                      ),
                      Text(
                          "Mauris non tempor quam, et lacinia sapien. Mauris accumsan eros eget libero posuere vulputate. Etiam elit elit, elementum sed varius at, adipiscing vitae est. Sed nec felis pellentesque, lacinia dui sed, ultricies sapien. Pellentesque orci lectus, consectetur vel posuere posuere, rutrum eu ipsum. Aliquam eget odio sed ligula iaculis."),
                      Header(
                        title: "LEARNING OBJECTIVES",
                      ),
                      CheckedItem(
                          title: "Mauris non tempor quam, et lacinia sapien."),
                      CheckedItem(
                          title:
                              "Sed nec felis pellentesque, lacinia dui sed, ultricies sapien."),
                      CheckedItem(
                          title:
                              "Etiam elit elit, elementum sed varius at, adipiscing vitae est."),
                      CheckedItem(
                          title:
                              "Pellentesque orci lectus, consectetur vel posuere posuere, rutrum eu ipsum."),
                      Header(
                        title: "BENEFITS",
                      ),
                      Text(
                        "Facility",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      Text(
                          "Etiam nisi ante, consectetur eget placerat a, tempus a neque."),
                      CheckedItem(
                          title:
                              "Etiam elit elit, elementum sed varius at, adipiscing vitae est."),
                      CheckedItem(
                          title:
                              "Etiam elit elit, elementum sed varius at, adipiscing vitae est."),
                      CheckedItem(
                          title:
                              "Etiam elit elit, elementum sed varius at, adipiscing vitae est."),
                      CheckedItem(
                          title:
                              "Etiam elit elit, elementum sed varius at, adipiscing vitae est."),
                      CheckedItem(
                          title:
                              "Etiam elit elit, elementum sed varius at, adipiscing vitae est."),
                      CheckedItem(
                          title:
                              "Etiam elit elit, elementum sed varius at, adipiscing vitae est."),
                      CheckedItem(
                          title:
                              "Etiam elit elit, elementum sed varius at, adipiscing vitae est."),
                      CheckedItem(
                          title:
                              "Etiam elit elit, elementum sed varius at, adipiscing vitae est."),
                      CheckedItem(
                          title:
                              "Etiam elit elit, elementum sed varius at, adipiscing vitae est."),
                      CheckedItem(
                          title:
                              "Etiam elit elit, elementum sed varius at, adipiscing vitae est."),
                      CheckedItem(
                          title:
                              "Etiam elit elit, elementum sed varius at, adipiscing vitae est."),
                      CheckedItem(
                          title:
                              "Etiam elit elit, elementum sed varius at, adipiscing vitae est."),
                      CheckedItem(
                          title:
                              "Etiam elit elit, elementum sed varius at, adipiscing vitae est."),
                      Text(
                        "Staff",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      Text(
                          "Sed nec felis pellentesque, lacinia dui sed, ultricies sapien. Pellentesque orci lectus, consectetur vel posuere posuere, rutrum eu ipsum. Aliquam eget odio sed ligula iaculis."),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                        child: Container(
                          color: Colors.transparent,
                          width: MediaQuery.of(context).size.width,
                          height: 40,
                          child: FlatButton(
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(10.0),
                            ),
                            onPressed: () {},
                            color: Color.fromRGBO(29, 115, 168, 1),
                            child: Text(
                              "Start Study",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w300
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ]),
          )
        ],
      ),
    );
  }
}

class CheckedItem extends StatelessWidget {
  final String title;
  const CheckedItem({
    Key key,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      // crossAxisAlignment: CrossAxisAlignment.start,
      // mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Checkbox(
          value: true,
          onChanged: null,
        ),
        Expanded(
            child: Text(
          this.title,
        ))
      ],
    );
  }
}

class Header extends StatelessWidget {
  final String title;
  const Header({
    Key key,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Text(
        this.title,
        style: TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
