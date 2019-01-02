import 'package:flutter/material.dart';

class MyLogin extends StatefulWidget {
  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  final TextEditingController _usernameController = new TextEditingController();

  final TextEditingController _passwordController = new TextEditingController();

  String _welcomeText = "";

  void _eraseFields() {
    setState(() {
      _usernameController.clear();
      _passwordController.clear();
    });
  }

  void _showMessage() {
    setState(() {
      if (_usernameController.text.isNotEmpty &&
          _passwordController.text.isNotEmpty) {
        _welcomeText = _usernameController.text;
      } else {
        _welcomeText = "Nothing";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      backgroundColor: Colors.blueAccent,
      body: ListView(
        children: <Widget>[
          //FORM BEGINS HERE:
          Container(
            child: Column(
              children: <Widget>[
                Image.asset(
                  'assets/images/face.png',
                  width: 80.0,
                  height: 80.0,
                  color: Colors.greenAccent,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  width: 400.0,
                  height: 250.0,
                  child: Column(
                    children: <Widget>[
                      TextField(
                        controller: _usernameController,
                        decoration: InputDecoration(
                          hintText: "Enter Username",
                          labelText: "Username",
                          icon: Icon(Icons.person),
                        ),
                      ),
                      TextField(
                        controller: _passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Enter Password",
                          labelText: "Password",
                          icon: Icon(Icons.lock),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          RaisedButton(
                            onPressed: _showMessage,
                            color: Colors.blue,
                            child: Text("Login"),
                          ),
                          RaisedButton(
                            onPressed: _eraseFields,
                            color: Colors.red,
                            child: Text("Clear"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Center(
            child: Text(
              "Welcome $_welcomeText",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          )
        ],
      ),
    );
  }
}
