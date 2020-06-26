import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  static final String routeName = 'Profile';

  @override
  Widget build(BuildContext context) {
    final double circleRadius = 180.0;
    final double circleBorderWidth = 8.0;
    final color = Color.fromRGBO(232, 234, 239, 1);
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromRGBO(232, 234, 239, 1),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: Colors.white,
        title: Text(
          "Profile",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: circleRadius / 2.0 + 40),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20.0),
                padding: EdgeInsets.only(bottom: 15.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(color: Colors.white, spreadRadius: 3),
                  ],
                ),
                //replace this Container with your Card
//                height: size.height - 100,
                child: Container(
                  padding: EdgeInsets.only(
                      top: circleRadius / 2 + 20.0, left: 20.0, right: 20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                          padding: EdgeInsets.only(bottom: 10),
                          child: Text(
                            'EMAIL ADDRESS',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(155, 164, 183, 1),
                            ),
                          )),
                      TextFormField(
                        decoration: InputDecoration(
                            isDense: true,
                            contentPadding:
                                EdgeInsets.only(left: 8.0, right: 8.0),
                            filled: true,
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            fillColor: Colors.white,
                            suffixIcon: Icon(
                              Icons.edit,
                              size: 25,
                              color: Color.fromRGBO(232, 234, 239, 1),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: new BorderSide(
                                color: Color.fromRGBO(232, 234, 239, 1),
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: new BorderSide(
                                color: Color.fromRGBO(232, 234, 239, 1),
                              ),
                            ),
                            hintText: "name@domain.com"),
                        initialValue: 'marquise_johnston@yahoo.com',
                        // validator: (value) {
                        //   if (value.isEmpty) {
                        //     return 'Please enter some text';
                        //   }
                        //   return null;
                        // },
                      ),
                      Padding(
                          padding: EdgeInsets.only(bottom: 10, top: 10),
                          child: Text(
                            'GIVEN NAME',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(155, 164, 183, 1),
                            ),
                          )),
                      TextFormField(
                        decoration: InputDecoration(
                            isDense: true,
                            contentPadding:
                                EdgeInsets.only(left: 8.0, right: 8.0),
                            filled: true,
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            fillColor: Colors.white,
                            suffixIcon: Icon(
                              Icons.edit,
                              size: 25,
                              color: Color.fromRGBO(232, 234, 239, 1),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: new BorderSide(
                                color: Color.fromRGBO(232, 234, 239, 1),
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: new BorderSide(
                                color: Color.fromRGBO(232, 234, 239, 1),
                              ),
                            ),
                            hintText: "name@domain.com"),
                        initialValue: 'Marquise',
                        // validator: (value) {
                        //   if (value.isEmpty) {
                        //     return 'Please enter some text';
                        //   }
                        //   return null;
                        // },
                      ),
                      Padding(
                          padding: EdgeInsets.only(bottom: 10, top: 10),
                          child: Text(
                            'SURNAME',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(155, 164, 183, 1),
                            ),
                          )),
                      TextFormField(
                        decoration: InputDecoration(
                            isDense: true,
                            contentPadding:
                                EdgeInsets.only(left: 8.0, right: 8.0),
                            filled: true,
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            fillColor: Colors.white,
                            suffixIcon: Icon(
                              Icons.edit,
                              size: 25,
                              color: Color.fromRGBO(232, 234, 239, 1),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: new BorderSide(
                                color: Color.fromRGBO(232, 234, 239, 1),
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: new BorderSide(
                                color: Color.fromRGBO(232, 234, 239, 1),
                              ),
                            ),
                            hintText: "name@domain.com"),
                        initialValue: 'Johnston',
                        // validator: (value) {
                        //   if (value.isEmpty) {
                        //     return 'Please enter some text';
                        //   }
                        //   return null;
                        // },
                      ),
                      Padding(
                          padding: EdgeInsets.only(bottom: 10, top: 10),
                          child: Text(
                            'FACILITY',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(155, 164, 183, 1),
                            ),
                          )),
                      TextFormField(
                        decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.only(
                                left: 8.0, right: 8.0, top: 8.0, bottom: 8.0),
                            filled: true,
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            fillColor: Colors.white,
                            focusedBorder: OutlineInputBorder(
                              borderSide: new BorderSide(
                                color: Color.fromRGBO(232, 234, 239, 1),
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: new BorderSide(
                                color: Color.fromRGBO(232, 234, 239, 1),
                              ),
                            ),
                            hintText: "name@domain.com"),
                        maxLines: 8,
                        initialValue:
                            'Vestibulum rutrum quam vitae fringilla tincidunt. Suspendisse nec tortor urna. Ut laoreet sodales nisi, quis iaculis nulla iaculis vitae. Donec sagittis faucibus lacus eget blandit. Mauris vitae ultricies metus, at condimentum nulla. Donec quis ornare lacus. Etiam gravida mollis tortor quis porttitor.',
                        // validator: (value) {
                        //   if (value.isEmpty) {
                        //     return 'Please enter some text';
                        //   }
                        //   return null;
                        // },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 40),
              width: circleRadius,
              height: circleRadius,
              decoration: ShapeDecoration(
                  shape: CircleBorder(),
                  color: Color.fromRGBO(55, 164, 183, 0.2)),
              child: Padding(
                padding: EdgeInsets.all(circleBorderWidth),
                child: DecoratedBox(
                  decoration: ShapeDecoration(
                      shape: CircleBorder(),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            'https://upload.wikimedia.org/wikipedia/commons/a/a0/Bill_Gates_2018.jpg',
                          ))),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
