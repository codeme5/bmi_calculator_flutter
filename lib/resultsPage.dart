import 'package:flutter/material.dart';

import 'bottomButton.dart';
import 'reusableCard.dart';

const kResultStyle = TextStyle(
    fontSize: 50, fontWeight: FontWeight.w700, fontFamily: 'GillSans');
const kDescStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    fontFamily: 'GillSans',
    color: Color(0xFF24D876));

const kBMIStyle = TextStyle(
    fontSize: 100, fontWeight: FontWeight.w900, fontFamily: 'Roboto Slab');

const kInterpretationStyle = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w500,
  fontFamily: 'GillSans',
);

class ResultsPage extends StatelessWidget {
  final String bmi;
  final String res;
  final String interp;
  ResultsPage({required this.bmi, required this.res, required this.interp});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Your Results',
              style: kResultStyle,
            ),
          ),
          Expanded(
            child: Padding(
              padding:
                  const EdgeInsets.only(top: 0, bottom: 8, left: 16, right: 16),
              child: ReusableCard(
                colour: Theme.of(context).primaryColor,
                cardChild: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(top: 50),
                        child: Column(
                          children: [
                            Text(
                              res,
                              style: kDescStyle,
                            ),
                            Expanded(
                              child: Text(
                                bmi,
                                style: kBMIStyle,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 0, bottom: 16, left: 16, right: 16),
                        child: Text(
                          interp,
                          style: kInterpretationStyle,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          BottomButton(
              onPress: () {
                Navigator.pop(context);
              },
              text: 'RE-CALCULATE')
        ],
      ),
    );
  }
}
