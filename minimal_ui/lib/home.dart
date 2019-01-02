import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  //class called in main function
  final String title;

  Home({Key key, this.title})
      : super(key: key); //also call super to know how to create object
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        // child: CustomButton(),
       
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final snackbar = SnackBar(
          content: Text('Hello Saroj!'),
          backgroundColor: Theme.of(context).backgroundColor,
          duration: Duration(milliseconds: 2000),
        );

        Scaffold.of(context).showSnackBar(snackbar);
      },
      //the actual button here
      child: Container(
        padding: EdgeInsets.all(18.0),
        decoration: BoxDecoration(
          color: Theme.of(context).buttonColor,
          borderRadius: BorderRadius.circular(5.5),
        ),
        child: Text('Tap for Snackbar'),
      ),
    );
  }
}

