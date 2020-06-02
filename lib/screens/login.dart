import 'package:flutter/material.dart';
import 'package:medehealth/screens/dashboard.dart';

class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  final color = Color.fromRGBO(232, 234, 239, 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      body: SafeArea(
        child: Container(
          // padding: EdgeInsets.only(left: 40.0, right: 40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.only(left: 0, right: 0),
                  child: Scaffold(
                    backgroundColor: color,
                    body: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset("assets/images/medeLogo.png"),
                          Padding(
                            padding:
                                EdgeInsets.only(left: 10, right: 10, top: 20),
                            child: Form(
                              key: _formKey,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                      padding: EdgeInsets.only(bottom: 10),
                                      child: Text(
                                        'EMAIL ADDRESS',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color:
                                              Color.fromRGBO(155, 164, 183, 1),
                                        ),
                                      )),
                                  TextFormField(
                                    decoration: InputDecoration(
                                        isDense: true,
                                        contentPadding: EdgeInsets.only(
                                            left: 8.0, right: 8.0),
                                        filled: true,
                                        floatingLabelBehavior:
                                            FloatingLabelBehavior.never,
                                        fillColor: Colors.white,
                                        suffixIcon: Icon(
                                          Icons.email,
                                          size: 25,
                                          color: color,
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: new BorderSide(
                                              color: Colors.white),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: new BorderSide(
                                              color: Colors.white),
                                        ),
                                        hintText: "name@domain.com"),

                                    // validator: (value) {
                                    //   if (value.isEmpty) {
                                    //     return 'Please enter some text';
                                    //   }
                                    //   return null;
                                    // },
                                  ),
                                  Padding(
                                      padding:
                                          EdgeInsets.only(bottom: 10, top: 20),
                                      child: Text(
                                        'PASSWORD',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: Color.fromRGBO(
                                                155, 164, 183, 1)),
                                      )),
                                  TextFormField(
                                    obscureText: true,
                                    decoration: InputDecoration(
                                        isDense: true,
                                        contentPadding: EdgeInsets.only(
                                            left: 8.0, right: 8.0),
                                        filled: true,
                                        floatingLabelBehavior:
                                            FloatingLabelBehavior.never,
                                        fillColor: Colors.white,
                                        suffixIcon: Icon(
                                          Icons.lock_open,
                                          size: 25,
                                          color: color,
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: new BorderSide(
                                              color: Colors.white),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: new BorderSide(
                                              color: Colors.white),
                                        ),
                                        hintText: "*********"),

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
                          )
                        ],
                      ),
                    ),
                    floatingActionButtonLocation:
                        FloatingActionButtonLocation.centerDocked,
                    floatingActionButton: FloatingActionButton(
                      backgroundColor: Color.fromRGBO(29, 115, 168, 1),
                      child: const Icon(
                        Icons.arrow_forward,
                        color: Colors.yellow,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, DashBoard.routeName);
                      },
                    ),
                    bottomNavigationBar: BottomAppBar(
                      shape: CircularNotchedRectangle(),
                      notchMargin: 4.0,
                      child: new Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          SizedBox(
                            height: 40,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      InkWell(
                        onTap: () {},
                        child: Text(
                          'Forgot your password',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromRGBO(29, 115, 168, 1),
                              fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
