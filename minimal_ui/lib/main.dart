import 'package:flutter/material.dart';

void main() => runApp(MyHomePage());

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text('EXPLORE',
        style: TextStyle(
          fontFamily: 'Montserrat',
          fontSize: 15.0,
          color: Colors.black,
        ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.menu),
          color: Colors.black,
          iconSize: 17.0,
          onPressed: (){},
        ),
        actions: <Widget>[

        ],
      ),

      body: Container(

      ),
      
    );
  }
}