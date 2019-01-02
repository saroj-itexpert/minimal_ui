import 'package:flutter/material.dart';
import './planet/weightonplanet.dart';

void main() {
  var title = "Login UI";

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      home: WeightOnPlanet(),
    ),
  );
}
