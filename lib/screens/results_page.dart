import 'file:///D:/COLLAGE%20WORK/PROJECTS/Flutter%20Course/bmi-calculator/lib/components/bottom_button.dart';
import 'package:bmi_calculator/constants.dart';
import 'file:///D:/COLLAGE%20WORK/PROJECTS/Flutter%20Course/bmi-calculator/lib/components/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
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
                    'Normal',
                    style: kResultTextStyle,
                  ),
                  Text(
                    '18.3',
                    style: kBMIStyel,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Your BMI result is quite low, you should eat more!',
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
