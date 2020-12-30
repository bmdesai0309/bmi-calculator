import 'file:///D:/COLLAGE%20WORK/PROJECTS/Flutter%20Course/bmi-calculator/lib/components/bottom_button.dart';
import 'package:bmi_calculator/constants.dart';
import 'file:///D:/COLLAGE%20WORK/PROJECTS/Flutter%20Course/bmi-calculator/lib/components/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {

  ResultPage({@ required this.bmiResult, @required this.resultText, @required this.interpretation});

  final String bmiResult;
  final String resultText;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI CALCULATOR')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Results',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusebleCard(
              color: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kBMIStyel,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(interpretation,
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,),
                  ),
                ],
              ),
            ),
          ),
          BottomButton(onTap: () {Navigator.pop(context);}, buttonTitle: 'RE-CALCULATE')
        ],
      ),
    );
  }
}
