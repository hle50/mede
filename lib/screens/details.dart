import 'package:flutter/material.dart';

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
                isActive: true,
                title: Text(""),
                content: SingleChildScrollView(
                    child: Text("1 Before starting, we should create a page.")),
              ),
              Step(
                isActive: true,
                title: Text(""),
                content: Text("2 Let's look at its construtor."),
              ),
              Step(
                isActive: true,
                title: Text(""),
                content: Text("3 Before starting, we should create a page."),
              ),
              Step(
                isActive: true,
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
