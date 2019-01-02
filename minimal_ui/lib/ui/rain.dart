import 'package:flutter/material.dart';

class Rain extends StatefulWidget {
  //allow us to create a state which then will take that state and
  // save in the state object and then retrieve that as we need stateful

  @override
  _RainState createState() => _RainState();
  //we're overriding the createState()
  //because if it's stateful widget we do it we have to override the
  // create state ,this is where we create State
}

class _RainState extends State<Rain> {
  int _moneyCounter = 0;

  void _rainMoney() {
    //IMPORTANT- setState is called each time we need to update the UI
    setState(() {
      _moneyCounter += 100;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Make It Rain!"),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text(
              "Get Rich!",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 30.0,
                fontFamily: 'Oxygen',
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(
              child: Center(
                child: Text(
                  "\$$_moneyCounter",
                  style: _moneyCounter > 1000
                      ? TextStyle(
                          color: Colors.green,
                          fontSize: 45.0,
                          fontWeight: FontWeight.w800,
                          fontFamily: 'Oxygen',
                        )
                      : TextStyle(
                          color: Colors.green,
                          fontSize: 45.0,
                          fontFamily: 'Oxygen',
                        ),
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: RaisedButton(
                  padding: EdgeInsets.all(20.0),
                  color: Colors.green,
                  onPressed: _rainMoney,
                  child: Text(
                    "Money Shower",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: FlatButton(
                child: Text("RESET"),
                onPressed: () {
                  setState(() {
                    _moneyCounter = 0;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
