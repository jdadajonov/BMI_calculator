import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'card_child.dart';
import 'reusable_card.dart';

const bottomContainerHeight = 80.0;
const cardColour = Color(0xFF1D1E33);
const bottomContainerColor = Color(0xFFEB1555);
const inactiveCardColour = Color(0xFF111328);

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Container(
          child: Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetectingCard(
                        gestureDetection: () {
                          setState(() {
                            selectedGender = Gender.male;
                          });
                        },
                        colour: selectedGender == Gender.male
                            ? cardColour
                            : inactiveCardColour,
                        cardChild: CardChild(
                          iconPicture: FontAwesomeIcons.mars,
                          iconText: 'MALE',
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetectingCard(
                        gestureDetection: () {
                          setState(() {
                            selectedGender = Gender.female;
                          });
                        },
                        colour: selectedGender == Gender.female
                            ? cardColour
                            : inactiveCardColour,
                        cardChild: CardChild(
                            iconPicture: FontAwesomeIcons.venus,
                            iconText: 'FEMALE'),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ReusableCard(colour: cardColour),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: ReusableCard(
                        colour: cardColour,
                      ),
                    ),
                    Expanded(
                      child: ReusableCard(colour: cardColour),
                    ),
                  ],
                ),
              ),
              Container(
                color: bottomContainerColor,
                margin: EdgeInsets.only(top: 10.0),
                width: double.infinity,
                height: bottomContainerHeight,
              )
            ],
          ),
        ));
  }
}
