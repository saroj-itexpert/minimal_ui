import 'package:flutter/material.dart';


class SnackBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: RaisedButton(
      onPressed: (){
        final snackBar = SnackBar(
        
          content: Text('See More'),
          action: SnackBarAction(
            label: 'UNDO',
            onPressed: (){},
          ),
        );
        Scaffold.of(context).showSnackBar(snackBar);
      },
      child: Text("Show SnackBar"),
    ),);
  }
}
