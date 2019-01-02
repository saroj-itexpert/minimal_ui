import 'package:flutter/material.dart';
import './bmi/BMICalculator.dart';

void main() {
  var title = "Login UI";

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      home: BMICalculator(),
    ),
  );
}
