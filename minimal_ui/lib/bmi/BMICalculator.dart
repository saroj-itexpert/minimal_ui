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
  String _finalResult = "";
  String _resultReading = "";


  void calculateBMI() {
    //FORMULA :
    setState(() {
          double age = double.parse(_ageController.text) ;
          double weight =  double.parse(_weightController.text);
          double height =  double.parse(_heightController.text);
          inches = height * 12; //converting feet to inches
          double kg = weight * 2.20462262185;

          if((_ageController.text.isNotEmpty || age>0) 
          &&((_heightController.text.isNotEmpty || inches >0)
          &&(_weightController.text.isNotEmpty || kg > 0))){
            result = kg / (inches * inches) * 703;

            if(double.parse(result.toStringAsFixed(1))< 18.5){
              _resultReading = "Underweight";
              print(_resultReading);

            }else if(double.parse(result.toStringAsFixed(1)) >= 18.5 
              && result < 25
             ){
               _resultReading = "Great Physique";
               print(_resultReading);
             }else if(double.parse(result.toStringAsFixed(1)) >= 25 
              && result < 30
             ){
               _resultReading = "Overweight";
               print(_resultReading);
             }else if(double.parse(result.toStringAsFixed(1)) >= 30){
               _resultReading = "Obese";
               print(_resultReading);
             }

          }else{
            result = 0.0;
          }

          
        });

        _finalResult = "YOUR BMI: ${result.toStringAsFixed(1)}";
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
              "YOUR BMI IS: $_finalResult ",
              style: TextStyle(
                  fontFamily: 'Oxygen', fontSize: 25.0, color: Colors.black),
            ),
          ),
          Center(
            child: Text(
              "$_resultReading ",
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
