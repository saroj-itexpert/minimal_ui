import 'package:flutter/material.dart';
import './login/login.dart';

void main() {
  var title = "Login UI";

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      home: Login(),
    ),
  );
}
