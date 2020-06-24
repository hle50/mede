import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import './introduction.dart';

class Details extends StatefulWidget {
  static final String routeName = "Details";

  Details({Key key}) : super(key: key);

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  int all = 3;
  int currentStep = 0;
  bool complete = false;

  next() {
    currentStep + 1 != 4
        ? goTo(currentStep + 1)
        : setState(() => complete = true);
  }

  goTo(step) {
    setState(() {
      currentStep = step;
    });
  }

  cancel() {
    if (currentStep > 0) {
      goTo(currentStep - 1);
    }
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: Colors.white,
        title: Text(
          "Assessment",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Theme(
        data: Theme.of(context)
            .copyWith(primaryColor: Color.fromRGBO(29, 115, 168, 1)),
        child: Container(
          child: Stepper(
            currentStep: currentStep,
            onStepCancel: cancel,
            onStepContinue: next,
            onStepTapped: (step) => goTo(step),
            type: StepperType.horizontal,
            steps: [
              Step(
                isActive: currentStep >= 0,
                title: Text(""),
                content: SingleChildScrollView(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Badge(
                      badgeColor: Color.fromRGBO(255, 59, 48, 1),
                      shape: BadgeShape.square,
                      borderRadius: 5,
                      toAnimate: false,
                      badgeContent: Text('LEGISLATED',
                          style: TextStyle(color: Colors.white, fontSize: 10)),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Text(
                        'Absconding / Missing Persons',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                    ),
                    Text('30-60min to complete'),
                    SizedBox(
                      height: 40,
                    ),
                    Header(title: 'OVERVIEW'),
                    Text(
                        'Mauris non tempor quam, et lacinia sapien. Mauris accumsan eros eget libero posuere vulputate. Etiam elit elit, elementum sed varius at, adipiscing vitae est. Sed nec felis pellentesque, lacinia dui sed, ultricies sapien. Pellentesque orci lectus, consectetur vel posuere posuere, rutrum eu ipsum. Aliquam eget odio sed ligula iaculis.'),
                    SizedBox(
                      height: 40,
                    ),
                    Header(title: 'LEARNING OBJECTIVES'),
                    CheckedItem(
                      title:
                          "Etiam elit elit, elementum sed varius at, adipiscing vitae est.",
                    ),
                    CheckedItem(
                      title:
                          "Etiam elit elit, elementum sed varius at, adipiscing vitae est.",
                    ),
                    CheckedItem(
                      title:
                          "Etiam elit elit, elementum sed varius at, adipiscing vitae est.",
                    ),
                    CheckedItem(
                      title:
                          "Etiam elit elit, elementum sed varius at, adipiscing vitae est.",
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Header(title: 'BENEFITS'),
                    Text(
                      'Facility',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                        'Etiam nisi ante, consectetur eget placerat a, tempus a neque.'),
                    CheckedItem(
                      title:
                          "Etiam elit elit, elementum sed varius at, adipiscing vitae est.",
                    ),
                    CheckedItem(
                      title:
                          "Etiam elit elit, elementum sed varius at, adipiscing vitae est.",
                    ),
                    CheckedItem(
                      title:
                          "Etiam elit elit, elementum sed varius at, adipiscing vitae est.",
                    ),
                    CheckedItem(
                      title:
                          "Etiam elit elit, elementum sed varius at, adipiscing vitae est.",
                    ),
                    CheckedItem(
                      title:
                          "Etiam elit elit, elementum sed varius at, adipiscing vitae est.",
                    ),
                    CheckedItem(
                      title:
                          "Etiam elit elit, elementum sed varius at, adipiscing vitae est.",
                    ),
                    CheckedItem(
                      title:
                          "Etiam elit elit, elementum sed varius at, adipiscing vitae est.",
                    ),
                    CheckedItem(
                      title:
                          "Etiam elit elit, elementum sed varius at, adipiscing vitae est.",
                    ),
                    CheckedItem(
                      title:
                          "Etiam elit elit, elementum sed varius at, adipiscing vitae est.",
                    ),
                    CheckedItem(
                      title:
                          "Etiam elit elit, elementum sed varius at, adipiscing vitae est.",
                    ),
                    CheckedItem(
                      title:
                          "Etiam elit elit, elementum sed varius at, adipiscing vitae est.",
                    ),
                    CheckedItem(
                      title:
                          "Etiam elit elit, elementum sed varius at, adipiscing vitae est.",
                    ),
                    CheckedItem(
                      title:
                          "Etiam elit elit, elementum sed varius at, adipiscing vitae est.",
                    ),
                    CheckedItem(
                      title:
                          "Etiam elit elit, elementum sed varius at, adipiscing vitae est.",
                    ),
                    CheckedItem(
                      title:
                          "Etiam elit elit, elementum sed varius at, adipiscing vitae est.",
                    ),
                    CheckedItem(
                      title:
                          "Etiam elit elit, elementum sed varius at, adipiscing vitae est.",
                    ),
                    CheckedItem(
                      title:
                          "Etiam elit elit, elementum sed varius at, adipiscing vitae est.",
                    ),
                    CheckedItem(
                      title:
                          "Etiam elit elit, elementum sed varius at, adipiscing vitae est.",
                    ),
                    CheckedItem(
                      title:
                          "Etiam elit elit, elementum sed varius at, adipiscing vitae est.",
                    ),
                    CheckedItem(
                      title:
                          "Etiam elit elit, elementum sed varius at, adipiscing vitae est.",
                    ),
                  ],
                )),
              ),
              Step(
                isActive: currentStep >= 1,
                title: Text(""),
                content: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Header(
                        title: 'AGED CARE STANDARDS',
                      ),
                      Text(
                          'Etiam nisi ante, consectetur eget placerat a, tempus a neque.'),
                      CheckedItem(
                        title: 'Four Standards ',
                      ),
                      CheckedItem(
                        title: 'Four Principies',
                      ),
                      CheckedItem(
                        title: '44 expected outcomes',
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Header(
                        title: 'EXPECTED OUTCOMES FOR STANDARD TWO',
                      ),
                      RichText(
                        text: TextSpan(children: <TextSpan>[
                          TextSpan(
                            text: 'Standard Two:',
                            style: TextStyle(
                              color: Color.fromRGBO(155, 164, 183, 1),
                            ),
                          ),
                          TextSpan(
                            text: ' Sed nec felis pellentesque',
                            style: TextStyle(
                              color: Color.fromRGBO(29, 29, 29, 1),
                            ),
                          ),
                        ]),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Principies:',
                        style: TextStyle(
                          color: Color.fromRGBO(29, 29, 29, 1),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Sed nec felis pellentesque, lacinia dui sed, ultricies sapien. Pellentesque orci lectus, consectetur vel posuere posuere, rutrum eu ipsum. Aliquam eget odio sed ligula iaculis.',
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Standard Two is made up of 17 outcomes',
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets/images/s2.png',
                          fit: BoxFit.cover,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Step(
                  isActive: currentStep >= 2,
                  title: Text(""),
                  content: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        Container(
                          color: Color.fromRGBO(162, 210, 239, 1),
                          child: Column(
                            children: <Widget>[
                              Container(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Container(
                                      child: Row(
                                        children: <Widget>[
                                          Icon(Icons.info),
                                          Text('Instructions')
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Icon(
                                        Icons.close,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'To complete the MedeGuide, answer the questions below by selecting the answer that you think is the most correct. Your results will be displayed on the next page.',
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )),
              Step(
                isActive: currentStep >= 3,
                title: Text(""),
                content: Text("4 Let's look at its construtor."),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
