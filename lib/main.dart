import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled1/trial.dart';

void main(List<String> args) {
  runApp(myApp());
}

class myApp extends StatefulWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  _myAppState createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Container(
      child: Android1Widget(),
    ));
  }
}

class Android1Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Center(
          child: Container(
            width: 395,
            height: 990,
            decoration: BoxDecoration(
              color: Color.fromRGBO(8, 5, 159, 1),
            ),
            child: Stack(children: <Widget>[
              Positioned(
                  top: 148,
                  left: 0,
                  child: Center(
                    child: Container(
                        width: 391,
                        height: 650,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(51.12834548950195),
                            topRight: Radius.circular(51.12834548950195),
                            bottomLeft: Radius.circular(0),
                            bottomRight: Radius.circular(0),
                          ),
                          color: Colors.grey[100],
                        )),
                  )),
              Positioned(
                  top: 204,
                  left: 28,
                  child: Container(
                      width: 145,
                      height: 145,
                      child: Stack(children: <Widget>[
                        Positioned(
                            top: 0,
                            left: 0,
                            child: Container(
                                width: 145,
                                height: 145,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    topRight: Radius.circular(30),
                                    bottomLeft: Radius.circular(30),
                                    bottomRight: Radius.circular(30),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color.fromRGBO(0, 0, 0, 0.25),
                                        offset: Offset(2.2870967388153076,
                                            2.2870967388153076),
                                        blurRadius: 17.15322494506836)
                                  ],
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                ))),
                        Positioned(
                            top: 30,
                            left: 30,
                            child: InkWell(
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      ImageIcon(AssetImage(
                                          'assets/images/Icons8bedroom481.png'))
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                  Row(
                                    children: [
                                      Text("BedRoom",
                                          style: TextStyle(
                                            fontSize: 18,
                                          ))
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text("4 Lights",
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.deepOrange))
                                    ],
                                  ),
                                ],
                              ),
                              onTap: () {
                                Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                        builder: (context) => myapp2()));
                              },
                            )),
                      ]))),
              Positioned(
                  top: 372,
                  left: 28,
                  child: Container(
                      width: 145,
                      height: 145,
                      child: Stack(children: <Widget>[
                        Positioned(
                            top: 0,
                            left: 0,
                            child: Container(
                                width: 145,
                                height: 145,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    topRight: Radius.circular(30),
                                    bottomLeft: Radius.circular(30),
                                    bottomRight: Radius.circular(30),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color.fromRGBO(0, 0, 0, 0.25),
                                        offset: Offset(2.2870967388153076,
                                            2.2870967388153076),
                                        blurRadius: 17.15322494506836)
                                  ],
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                ))),
                        Positioned(
                            top: 30,
                            left: 30,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    ImageIcon(AssetImage(
                                        'assets/images/Icons8livingroom481.png'))
                                  ],
                                ),
                                SizedBox(height: 10),
                                Row(
                                  children: [
                                    Text("Living Room",
                                        style: TextStyle(
                                          fontSize: 18,
                                        )),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text("4 Lights",
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.deepOrange,
                                        ))
                                  ],
                                ),
                              ],
                            )),
                      ]))),
              Positioned(
                  top: 372,
                  left: 197,
                  child: Container(
                      width: 145,
                      height: 145,
                      child: Stack(children: <Widget>[
                        Positioned(
                            top: 0,
                            left: 0,
                            child: Container(
                                width: 145,
                                height: 145,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    topRight: Radius.circular(30),
                                    bottomLeft: Radius.circular(30),
                                    bottomRight: Radius.circular(30),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color.fromRGBO(0, 0, 0, 0.25),
                                        offset: Offset(2.2870967388153076,
                                            2.2870967388153076),
                                        blurRadius: 17.15322494506836)
                                  ],
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                ))),
                        Positioned(
                          top: 30,
                          left: 30,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  ImageIcon(AssetImage(
                                      'assets/images/icons8bath48.png'))
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  Text("BathRoom",
                                      style: TextStyle(
                                        fontSize: 18,
                                      ))
                                ],
                              ),
                              Row(
                                children: [
                                  Text("1 Lights",
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.deepOrange,
                                      ))
                                ],
                              ),
                            ],
                          ),
                        ),
                      ]))),
              Positioned(
                  top: 540,
                  left: 197,
                  child: Container(
                      width: 145,
                      height: 145,
                      child: Stack(children: <Widget>[
                        Positioned(
                            top: 0,
                            left: 0,
                            child: Container(
                                width: 145,
                                height: 145,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    topRight: Radius.circular(30),
                                    bottomLeft: Radius.circular(30),
                                    bottomRight: Radius.circular(30),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color.fromRGBO(0, 0, 0, 0.25),
                                        offset: Offset(2.2870967388153076,
                                            2.2870967388153076),
                                        blurRadius: 17.15322494506836)
                                  ],
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                ))),
                        Positioned(
                          top: 30,
                          left: 30,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  ImageIcon(AssetImage(
                                      'assets/images/Icons8balcony481.png'))
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  Text("Balcony",
                                      style: TextStyle(
                                        fontSize: 18,
                                      ))
                                ],
                              ),
                              Row(
                                children: [
                                  Text("2 Lights",
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.deepOrange,
                                      ))
                                ],
                              ),
                            ],
                          ),
                        ),
                      ]))),
              Positioned(
                  top: 540,
                  left: 28,
                  child: Container(
                      width: 145,
                      height: 145,
                      child: Stack(children: <Widget>[
                        Positioned(
                            top: 0,
                            left: 0,
                            child: Container(
                                width: 145,
                                height: 145,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    topRight: Radius.circular(30),
                                    bottomLeft: Radius.circular(30),
                                    bottomRight: Radius.circular(30),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color.fromRGBO(0, 0, 0, 0.25),
                                        offset: Offset(2.2870967388153076,
                                            2.2870967388153076),
                                        blurRadius: 17.15322494506836)
                                  ],
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                ))),
                        Positioned(
                          top: 30,
                          left: 30,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  ImageIcon(AssetImage(
                                      'assets/images/Icons8countryhouse481.png'))
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  Text("Outdoor",
                                      style: TextStyle(
                                        fontSize: 18,
                                      ))
                                ],
                              ),
                              Row(
                                children: [
                                  Text("5 Lights",
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.deepOrange,
                                      ))
                                ],
                              ),
                            ],
                          ),
                        ),
                      ]))),
              Positioned(
                  top: 204,
                  left: 197,
                  child: Container(
                      width: 145,
                      height: 145,
                      child: Stack(children: <Widget>[
                        Positioned(
                            top: 0,
                            left: 0,
                            child: Container(
                                width: 145,
                                height: 145,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    topRight: Radius.circular(30),
                                    bottomLeft: Radius.circular(30),
                                    bottomRight: Radius.circular(30),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color.fromRGBO(0, 0, 0, 0.25),
                                        offset: Offset(2.2870967388153076,
                                            2.2870967388153076),
                                        blurRadius: 17.15322494506836)
                                  ],
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                ))),
                        Positioned(
                          top: 30,
                          left: 30,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  ImageIcon(AssetImage(
                                      'assets/images/Icons8kitchenroom481.png'))
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  Text("Kitchen",
                                      style: TextStyle(
                                        fontSize: 18,
                                      ))
                                ],
                              ),
                              Row(
                                children: [
                                  Text("4 Lights",
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.deepOrange,
                                      ))
                                ],
                              ),
                            ],
                          ),
                        ),
                      ]))),
              Positioned(
                  top: 170,
                  left: 28,
                  child: Text(
                    'All Rooms',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontFamily: 'Roboto',
                        fontSize: 20,
                        letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.bold,
                        height: 1),
                  )),
              Positioned(
                  top: 50,
                  left: 28,
                  child: Text(
                    'Control Panel',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Roboto',
                        fontSize: 25,
                        letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.bold,
                        height: 1),
                  )),
              Positioned(
                top: 50,
                left: 272,
                child: Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/avtar.png'),
                    radius: 30,
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                    height: 80,
                    width: 400,
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                    ),
                    child: BottomNavigationBar(
                      items: [
                        BottomNavigationBarItem(
                          icon: Icon(Icons.lightbulb),
                          title: Text(""),
                        ),
                        BottomNavigationBarItem(
                          icon: Icon(Icons.home),
                          title: Text(""),
                        ),
                        BottomNavigationBarItem(
                          icon: Icon(Icons.settings),
                          title: Text(""),
                        )
                      ],
                    )),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
