import 'package:flutter/material.dart';

class BMICalculator extends StatefulWidget {
  @override
  _BMICalculatorState createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {
  final TextEditingController _ageController = TextEditingController();

  final TextEditingController _weightController = TextEditingController();
  final TextEditingController _heightController = TextEditingController();

  double inches = 0.0;
  double result = 0.0;


  void calculateBMI() {
    //FORMULA :
    setState(() {
          double age = double.parse(_ageController.text) ;
          double weight =  double.parse(_weightController.text);
          double height =  double.parse(_heightController.text);
          inches = height * 12; //converting feet to inches

          if((_ageController.text.isNotEmpty || age>0) 
          &&((_heightController.text.isNotEmpty || inches >0)
          &&(_weightController.text.isNotEmpty || weight > 0))){
            result = weight / (inches * inches) * 703;
          }

          
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text("BMI"),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          Image.asset(
            "assets/images/bmi.png",
            height: 90.0,
            width: 90.0,
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: <Widget>[
                Container(
                  height: 250.0,
                  width: 400.0,
                  color: Colors.grey.withOpacity(0.2),
                  child: Column(
                    children: <Widget>[
                      TextField(
                        controller: _ageController,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: "Age",
                          icon: Icon(Icons.person_pin),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      TextField(
                        controller: _heightController,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: "Height in feet",
                          icon: Icon(Icons.line_weight),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      TextField(
                        controller: _weightController,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: "Weight in Kg",
                          icon: Icon(Icons.loupe),
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      RaisedButton(
                        onPressed: calculateBMI,
                        color: Colors.pink,
                        child: Text("Calculate",
                            style: TextStyle(color: Colors.white)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Text(
              "YOUR BMI IS: ${result.toStringAsFixed(2)} ",
              style: TextStyle(
                  fontFamily: 'Oxygen', fontSize: 25.0, color: Colors.black),
            ),
          ),
          Center(
            child: Text(
              "OVERWEIGHT ",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Oxygen',
                  fontSize: 25.0,
                  color: Colors.pinkAccent),
            ),
          ),
        ],
      ),
    );
  }
}
