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
    var size = MediaQuery.of(context).size;
    print(size.height);
    var statusBarHeight = MediaQuery.of(context).padding.top;
    var contentHeight = ((size.height / 3) * 2);
    const double radius = 80;
    print(contentHeight);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 0),
              child: Container(
                width: double.infinity,
                height: contentHeight,
                color: color,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset("assets/images/medeLogo.png"),
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 20, top: 20),
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
                                    color: Color.fromRGBO(155, 164, 183, 1),
                                  ),
                                )),
                            TextFormField(
                              decoration: InputDecoration(
                                  isDense: true,
                                  contentPadding:
                                      EdgeInsets.only(left: 8.0, right: 8.0),
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
                                    borderSide:
                                        new BorderSide(color: Colors.white),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        new BorderSide(color: Colors.white),
                                  ),
                                  hintText: "name@domain.com"),
                            ),
                            Padding(
                                padding: EdgeInsets.only(bottom: 10, top: 20),
                                child: Text(
                                  'PASSWORD',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromRGBO(155, 164, 183, 1)),
                                )),
                            TextFormField(
                              obscureText: true,
                              decoration: InputDecoration(
                                  isDense: true,
                                  contentPadding:
                                      EdgeInsets.only(left: 8.0, right: 8.0),
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
                                    borderSide:
                                        new BorderSide(color: Colors.white),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        new BorderSide(color: Colors.white),
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
            ),
            Padding(
              padding: EdgeInsets.only(top: contentHeight - radius / 2),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, DashBoard.routeName);
                },
                child: Container(
                  width: radius,
                  height: radius,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color.fromRGBO(29, 115, 168, 1),
                  ),
                  child: Icon(
                    Icons.arrow_forward,
                    color: Color.fromRGBO(149, 217, 123, 1),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: contentHeight + radius),
              child: Center(
                child: InkWell(
                  onTap: () {},
                  child: Text(
                    'Forgot your password',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromRGBO(29, 115, 168, 1), fontSize: 20),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
