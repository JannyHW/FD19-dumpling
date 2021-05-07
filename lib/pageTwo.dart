import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        height:screenHeight,
        width: screenWidth,
        child: Stack(
          children: <Widget>[
            Container(
              height: 250,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/food.jpg'),
                  fit: BoxFit.cover
                  ),
                  ),
            ),
            Container(
              height: 250.0,
              color: Colors.white.withOpacity(0.7),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30, top: 45, right: 30),
              child: Container(
                child: Center(
                  child: TextField(decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search,
                    size: 20,
                    color:Color(0xFF999798),),
                    hintText: 'Find something speacial',
                    hintStyle: TextStyle(
                      color: Color(0xFF999798),
                      fontSize: 13,
                      fontFamily: 'OpenSans'
                      ),
                   ),),
                ),
                padding: EdgeInsets.only(left: 65),
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white),
              ),
              ),
              Positioned(
                top: 110,
                left: 35,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget> [
                    Text('The Best Food',
                    style: TextStyle(
                    fontFamily: 'OpenSans',
                          fontSize: 25.0,
                          color: Color(0xFF312F2E),
                          fontWeight: FontWeight.w600,
                      ),),

                    Text('in only 20 mins',
                    style: TextStyle(
                    fontFamily: 'OpenSans',
                          fontSize: 25.0,
                          color: Color(0xFF312F2E),
                          fontWeight: FontWeight.w600,
                      ),),

                    SizedBox(height: 15),
                    Row(
                      children: <Widget>[
                        Icon(Icons.location_on,
                        color: Color(0xFF7C7574), 
                        size: 15.0),
                        
                        SizedBox(width: 10),

                        Text('4983 W Flamingo Rd, Las Vegas',
                          style: TextStyle(
                          fontFamily: 'OpenSans',
                          fontSize: 12.0,
                          color: Color(0xFF7C7574),
                          fontWeight: FontWeight.w600,
                      ),),
                    ],),
                  ],
                ),),
                Positioned(
                  top: 225,
                  child: Container(
                    height: screenHeight - 225.0,
                    width: screenWidth,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40)),
                        color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5.0, right: 5.0 ),
                        child: ListView(
                          padding: EdgeInsets.only(left: 30, right: 30),
                          children: [
                            SizedBox(height: 15),
                            Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                           
                             Text( 'WEEKLY SPECIAL',
                              style: TextStyle(
                                fontFamily: 'OpenSans', 
                                color: Color(0xFFC4C2C2), 
                                fontWeight: FontWeight.w600),
                            ),
                            IconButton(
                            icon:
                                Icon(Icons.rotate_left, 
                                color: Color(0xFFC4C2C2)),
                            onPressed: () {},
                          ),
                            ],),
                            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                width: 150,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget> [
                                    Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        boxShadow: [
                                          BoxShadow(color: Color(0xFFD1C0B9), blurRadius: 4.0, spreadRadius: 3.0),
                                        ],
                                        image: DecorationImage(image: AssetImage('images/chefhat.jpg'),
                                        fit:BoxFit.cover),
                                    ),
                                    ),
                                    Text('Tony Hoftman',
                                     style: TextStyle(
                                  fontFamily: 'OpenSans',
                                  fontSize: 14.0,
                                  color: Color(0xFF353535),
                                  fontWeight: FontWeight.w600
                                  ),
                                    ),
                                ],
                                ),
                              ),

                              Text('Location     ',
                               style: TextStyle(
                                  fontFamily: 'OpenSans',
                                  fontSize: 13.0,
                                  color: Color(0xFFE0AC98),
                                  fontWeight: FontWeight.w600
                                  ),

                              ),
                            ],),
                             SizedBox(height: 15.0),

                                               Container(
              width: MediaQuery.of(context).size.width - 30.0,
              child: Text(
                 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore a magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
                style: TextStyle(
                    fontFamily: 'OpenSans',
                    fontSize: 12.5,
                    color: Color(0xFF939190)),
              ),
            ),
             SizedBox(height: 15.0),
             Text(
                            '\$12.49',
                            style: TextStyle(
                                // fontFamily: 'OpenSans',
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF322F2E)),
                          ),
                          SizedBox(height: 10.0),
                          Image(
                            image: AssetImage('images/milk.jpg'),
                            fit: BoxFit.cover,
                            height: 280.0,
                          ),
                          ],

                        ),
                      ),
                  ),),              
          ],),
      ),
    );
  }
}
