import 'package:flutter/material.dart';
import './ui/rain.dart';

void main() {
  var title = "Make It Rain";

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      home: Rain(),
    ),
  );
}
