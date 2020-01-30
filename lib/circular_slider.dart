import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'package:flutter/material.dart';

class CircularSlider extends StatefulWidget {
  @override
  _CircularSliderState createState() => _CircularSliderState();
}

class _CircularSliderState extends State<CircularSlider> {

  String percentageModifier(double value) {
    final roundedValue = value.ceil().toInt().toString();
    return '$roundedValue °C';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SleekCircularSlider(
        min: -24,
        max: 24,
        initialValue: 16,
        appearance: CircularSliderAppearance(
          size: 250,
          customColors: CustomSliderColors(
            trackColor: Colors.deepPurpleAccent,
            progressBarColor: Colors.deepPurple,
          ),
          infoProperties: InfoProperties(modifier: percentageModifier),
        ),
        onChange: (double value){
          print(value);
        },
      ),
    );
  }
}
