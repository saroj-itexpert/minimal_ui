import 'package:flutter/material.dart';

class WeightOnPlanet extends StatefulWidget {
  @override
  _WeightOnPlanetState createState() => _WeightOnPlanetState();
}

class _WeightOnPlanetState extends State<WeightOnPlanet> {
  int radioValue = 0;

  void handleRadioValueChange(int value) {
    setState(() {
      radioValue = value;
      print(radioValue);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Weight On Planet X"),
        centerTitle: true,
        backgroundColor: Colors.black38,
      ),
      backgroundColor: Colors.blueGrey,
      body: Container(
        alignment: Alignment.topCenter,
        child: ListView(
          padding: const EdgeInsets.all(2.5),
          children: <Widget>[
            Image.asset(
              'assets/images/planet.png',
              height: 150.0,
              width: 200.0,
            ),
            Container(
              margin: const EdgeInsets.all(13.0),
              alignment: Alignment.center,
              child: Column(
                children: <Widget>[
                  TextField(
                    controller: null,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: "Your Weight on Earth",
                      hintText: "In Kilograms",
                      icon: Icon(Icons.person_outline),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Radio<int>(
                        activeColor: Colors.yellow,
                        value: 0,
                        groupValue: radioValue,
                        onChanged: handleRadioValueChange,
                      ),
                      Text(
                        "Pluto",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Oxygen',
                          fontWeight: FontWeight.w500
                        ),
                      ),
                      Radio<int>(
                        activeColor: Colors.green,
                        value: 1,
                        groupValue: radioValue,
                        onChanged: handleRadioValueChange,
                      ),
                      Text(
                        "Mars",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Oxygen',
                          fontWeight: FontWeight.w500
                        ),
                      ),
                      Radio<int>(
                        activeColor: Colors.red,
                        value: 2,
                        groupValue: radioValue,
                        onChanged: handleRadioValueChange,
                      ),
                      Text(
                        "Venus",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Oxygen',
                          fontWeight: FontWeight.w500
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0),

                  //RESUT TEXT:
                  Text("Result ",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontFamily: 'Oxygen',
                    fontWeight: FontWeight.bold
                  ),)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
