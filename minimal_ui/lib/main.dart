import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Minimal UI",
      home: MyHomePage(),
    ));

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          'EXPLORE',
          style: TextStyle(
            fontFamily: 'Oxygen',
            fontSize: 20.0,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.menu),
          color: Colors.black,
          iconSize: 20.0,
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            color: Colors.black,
            iconSize: 20.0,
            onPressed: () {},
          )
        ],
      ),
      body: ListView(
        padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
        children: <Widget>[
          Container(
            height: 125.0,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.all(10.0),
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      height: 70.0,
                      width: 70.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35.0),
                        color: Colors.orange,
                      ),
                      child: IconButton(
                        icon: Icon(Icons.add),
                        color: Colors.white,
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(
                      height: 7.0,
                    ),
                    Text(
                      'Add To',
                      style: TextStyle(
                        fontFamily: 'Oxygen',
                        fontWeight: FontWeight.w600,
                       
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 25.0),
                listItem('assets/images/a.jpeg', 'Rose', true),
                SizedBox(width: 25.0),
                listItem('assets/images/b.jpg', 'Fatima', false),
                SizedBox(width: 25.0),
                listItem('assets/images/c.jpg', 'Sarah', false),
                SizedBox(width: 25.0),
                listItem('assets/images/d.jpg', 'Saroj', false),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget listItem(String imgPath, String name, bool available) {
    return Column(
      children: <Widget>[
        Container(
          height: 70.0,
          width: 70.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(35.0),
              image: DecorationImage(
                image: AssetImage(imgPath),
                fit: BoxFit.cover,
              )),
        ),
        SizedBox(
          height: 7.0,
        ),
        Row(
          children: <Widget>[
            Text(
              name,
              style: TextStyle(
                fontFamily: 'Oxygen',
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            SizedBox(
              width: 4.0,
            ),
            available
                ? Container(
                    height: 10.0,
                    width: 10.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: Colors.orange,
                    ),
                  )
                : Container(),
          ],
        ),
      ],
    );
  }
}
