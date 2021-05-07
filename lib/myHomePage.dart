import 'package:flutter/material.dart';
import 'pageTwo.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4F0F1),
      body: ListView(children: <Widget>[
        Padding(
          padding: EdgeInsets.all(30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                // width: 185,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
              
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('images/model.jpg'),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(25)),
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Emily Bourdain',
                      style: TextStyle(
                        color: Color(0xFF42403F),
                        fontSize: 16,
                        fontFamily: 'OpenSans',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              IconButton(
                  icon: Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.grey.withOpacity(0.95),
                  ),
                  onPressed: () {})
            ],
          ),
        ),
        Container(
          height: 250,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/dumpling.png'), fit: BoxFit.cover),
          ),
        ),
        SizedBox(height: 20.0),
        Center(
          child: Text(
            'DUMPLINGS',
            style: TextStyle(
                fontFamily: 'OpenSans',
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Color(0xFF322F2E)),
          ),
        ),
        SizedBox(height: 10),
        Center(
          child: Text(
            'เกี๊ยว 喜欢订阅',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'OpenSans',
              fontSize: 20,
              color: Color(0xFF808080),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(30),
          child: Container(
            width: MediaQuery.of(context).size.width - 0.30,
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore a magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation et ullamco laboris nisi ut aliquip ex ea commodo consequat.',
              style: TextStyle(
                fontFamily: 'OpenSans',
                fontSize: 12.5,
                color: Color(0xFF8E8989),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                    icon: Icon(Icons.remove_circle_outline),
                    color: Color(0xFFC4C2C5),
                    onPressed: () {}),
                Container(
                  width: 150,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        '\$8.99',
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF322F2E),
                        ),
                      ),
                      Text(
                        'per 1 ORDER',
                        style: TextStyle(
                          fontFamily: 'OpenSans',
                          fontSize: 12.0,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF322F2E),
                        ),
                      ),
                    ],
                  ),
                ),
                IconButton(
                    icon: Icon(Icons.add_circle_outline_outlined),
                    onPressed: () {})
              ],
            ),
          ),
        ),
        Padding(
            padding: EdgeInsets.only(right: 30, left: 30),
            child: InkWell(
          
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => PageTwo()
                    ),);
              },
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                color: Colors.grey[600],
                child: Center(
                  child: Text('Add to Cart',
                  style: TextStyle(color: Colors.white,
                  letterSpacing: 1.5),),
                ),
              ),
            ),),

            SizedBox(height: 3),
            Center(
              child: Text(
                   'Get the second order in half price today',
              style: TextStyle(
                  fontFamily: 'OpenSans',
                  fontSize: 12.0,
                  color: Color(0xFF8E8989)),
              ),
            ),
      ]),
    );
  }
}
