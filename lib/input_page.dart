import 'package:bmi_calculator/bmiCalculator.dart';
import 'package:bmi_calculator/resultsPage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'bottomButton.dart';
import 'iconCardContent.dart';
import 'reusableCard.dart';
import 'roundIconButton.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

enum Gender {
  male,
  female,
}

const double bottomContainerHeight = 60;
const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);
const bottomContainerColor = Color(0xFFEB1555);
const Color defIconColor = Colors.white;

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.male;
  int height = 170;
  int weight = 60;
  int age = 12;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 16, top: 8, bottom: 8, right: 8),
                    child: ReusableCard(
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      colour: selectedGender == Gender.male
                          ? activeCardColor
                          : inactiveCardColor,
                      cardChild: IconCardContent(
                          defIconColor: defIconColor,
                          myIcon: FontAwesomeIcons.mars,
                          text: 'Male'),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 8, top: 8, bottom: 8, right: 16),
                    child: ReusableCard(
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      colour: selectedGender == Gender.female
                          ? activeCardColor
                          : inactiveCardColor,
                      cardChild: IconCardContent(
                          defIconColor: defIconColor,
                          myIcon: FontAwesomeIcons.venus,
                          text: 'Female'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: Padding(
            padding:
                const EdgeInsets.only(left: 16, top: 8, bottom: 8, right: 8),
            child: ReusableCard(
              colour: activeCardColor,
              cardChild: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Center(
                      child: Text(
                        'Height',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    mainAxisAlignment: MainAxisAlignment.center,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      Text(
                        'cm',
                        style: Theme.of(context).textTheme.bodySmall,
                      )
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: defIconColor,
                      inactiveTrackColor: Theme.of(context).disabledColor,
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 16),
                      thumbColor: Theme.of(context).highlightColor,
                      overlayShape: RoundSliderOverlayShape(),
                      overlayColor: Color(0x29EB1555),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 120,
                      max: 220,
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      },
                    ),
                  )
                ],
              ),
            ),
          )),
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: Padding(
                        padding: const EdgeInsets.only(
                            left: 16, top: 8, bottom: 8, right: 8),
                        child: ReusableCard(
                          colour: activeCardColor,
                          cardChild: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Weight',
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.baseline,
                                mainAxisAlignment: MainAxisAlignment.center,
                                textBaseline: TextBaseline.alphabetic,
                                children: [
                                  Text(
                                    weight.toString(),
                                    style:
                                        Theme.of(context).textTheme.bodyLarge,
                                  ),
                                  Text(
                                    'kg',
                                    style:
                                        Theme.of(context).textTheme.bodySmall,
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  RoundIconButton(
                                    onPress: () {
                                      setState(() {
                                        weight--;
                                      });
                                    },
                                    icon: FontAwesomeIcons.minus,
                                    thisColor: Color(0xFF4C4F5E),
                                  ),
                                  SizedBox(width: 8),
                                  RoundIconButton(
                                    onPress: () {
                                      setState(() {
                                        weight++;
                                      });
                                    },
                                    icon: FontAwesomeIcons.plus,
                                    thisColor: Color(0xFF4C4F5E),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ))),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.only(
                      left: 8, top: 8, bottom: 8, right: 16),
                  child: ReusableCard(
                    colour: activeCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Age',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          mainAxisAlignment: MainAxisAlignment.center,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              age.toString(),
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                            Text(
                              'kg',
                              style: Theme.of(context).textTheme.bodySmall,
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              onPress: () {
                                setState(() {
                                  age--;
                                });
                              },
                              icon: FontAwesomeIcons.minus,
                              thisColor: Color(0xFF4C4F5E),
                            ),
                            SizedBox(width: 8),
                            RoundIconButton(
                              onPress: () {
                                setState(() {
                                  age++;
                                });
                              },
                              icon: FontAwesomeIcons.plus,
                              thisColor: Color(0xFF4C4F5E),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )),
              ],
            ),
          ),
          BottomButton(
            text: 'CALCULATE',
            onPress: () {
              BMICalculatorBrain bmiObject = BMICalculatorBrain(
                  weight: weight.toDouble(), height: height.toDouble());
              String bmiVal = bmiObject.calcBMI();
              String result = bmiObject.getResult();
              String interpretation = bmiObject.getInterpretation();

              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ResultsPage(
                          bmi: bmiVal, res: result, interp: interpretation)));
            },
          )
        ],
      ),
    );
  }
}
