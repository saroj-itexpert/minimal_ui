import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _userController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      backgroundColor: Colors.blueGrey,
      body: Container(
        alignment: Alignment.topCenter,
        child: Column(
          children: <Widget>[
            Image.asset(
              'assets/images/face.png',
              width: 80.0,
              height: 80.0,
              color: Colors.lightGreen,
            ),
            //form starts
            SizedBox(height: 30.0,),
            Container(
              width: 400.0,
              height: 300.0,
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  TextField(
                    controller: _userController,
                    cursorColor: Colors.red,
                    decoration: InputDecoration(
                      hintText: "Enter Your Username",
                      labelText: "Username",
                      icon: Icon(Icons.person),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  TextField(
                    controller: _passwordController,
                    cursorColor: Colors.red,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter Your Password",
                      labelText: "Password",
                      icon: Icon(Icons.lock),
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      RaisedButton(
                        color: Colors.greenAccent,
                        child: Text("Login"),
                        onPressed: () {},
                      ),
                      RaisedButton(
                        child: Text("Sign Up"),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  FlatButton(
                    child: Text("RESET"),
                    onPressed: () {
                      setState(() {
                        _userController.clear();
                        _passwordController.clear();
                      });
                    },
                  )
                ],
              ),
            ),
            //FORM ENDS
            SizedBox(height: 20.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Welcome, Saroj",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontFamily: 'Oxygen',
                    fontWeight: FontWeight.w500
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
