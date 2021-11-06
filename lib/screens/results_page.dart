import 'package:bmi_calculator/components/big_red_button.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  final String bmi;
  final String bmiResult;
  final String bmiInterpretation;

  const ResultsPage({this.bmi, this.bmiResult, this.bmiInterpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              color: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    bmiResult.toUpperCase(),
                    style: kResultTextStyle,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    bmi,
                    style: kBmiTextStyle,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    bmiInterpretation,
                    style: kCommentTextStyle,
                    textAlign: TextAlign.center,
                  ),
                  BigRedButton(
                    onTap: () {
                      print('Boom');
                      Navigator.pop(context);
                    },
                    buttonTitle: 'Go back',
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
