import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/constants.dart';
import 'package:flutter_bmi_calculator/input_page.dart';
import "constants.dart";
import 'reusable_card.dart';

class ResultsPage extends StatefulWidget {

  ResultsPage({required this.bmiResult, required this.resultText, required this.interpretation});

final String bmiResult;
final String resultText;
final String interpretation;



  @override
  State<ResultsPage> createState() => _ResultsPageState();
}

class _ResultsPageState extends State<ResultsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kInactiveCardColor,
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              child: const Center(
                child: Text(
                  "Your Result",
                  style: kTitleTextStyle,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                  color: kActiveCardColor,
                ),
                child: ReusableCard(
                  colour: kActiveCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          child: Center(
                            child: Text(
                              widget.resultText,
                              style: kResultTextStyle,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: Text(
                            widget.bmiResult,
                            style: kBMITextStyle,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: Text(
                            widget.interpretation,
                            style: kDescriptionTextStyle,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => InputPage()),
                  );
                });
              },
              child: Container(
                child: Center(
                  child: Text(
                    "RE-CALCULATE",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                color: kBottomContainerColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}