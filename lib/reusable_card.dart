import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({
    @required this.colour,
    this.cardChild,
  });
  final Color colour;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return GestureDetectingCard(cardChild: cardChild, colour: colour);
  }
}

class GestureDetectingCard extends StatelessWidget {
  GestureDetectingCard({
    this.gestureDetection,
    this.cardChild,
    @required this.colour,
  });

  final Function gestureDetection;
  final Widget cardChild;
  final Color colour;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: gestureDetection,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
