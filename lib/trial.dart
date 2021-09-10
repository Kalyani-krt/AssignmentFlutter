import 'dart:async';

import 'package:flutter_svg/flutter_svg.dart';

import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'main.dart';

void main(List<String> args) {
  runApp(myapp2());
}

class myapp2 extends StatefulWidget {
  const myapp2({Key? key}) : super(key: key);

  @override
  State<myapp2> createState() => _myapp2State();
}

class _myapp2State extends State<myapp2> with TickerProviderStateMixin {
  late final AnimationController _controller;
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    Timer(const Duration(milliseconds: 200), () => _controller.forward());
    super.initState();
  }

  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double lower = 0.0;
    double upper = 1.0;

    RangeValues values = RangeValues(lower, upper);

    var sliderValue = 20.0;
    return Scaffold(
      body: SafeArea(
        top: true,
        bottom: true,
        child: Container(
            decoration: const BoxDecoration(
              color: Colors.blue,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(children: [
                      Padding(
                        padding: const EdgeInsets.all(19.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                IconButton(
                                  icon: Icon(Icons.arrow_back),
                                  onPressed: () {
                                    Navigator.of(context).pushReplacement(
                                        MaterialPageRoute(
                                            builder: (context) => myApp()));
                                  },
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "BedRoom",
                                  style: TextStyle(
                                    fontSize: 22,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: const [
                                Text(
                                  "4 lights",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.deepOrange,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ]),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                      child: Row(children: [
                        Row(
                          children: [
                            Stack(
                                alignment: AlignmentDirectional.topCenter,
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 10, 10, 0),
                                    child: Container(
                                      height: 72,
                                      width: 20,
                                      decoration: BoxDecoration(
                                        color: Colors.orangeAccent,
                                        borderRadius:
                                            BorderRadius.circular(50.0),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 0, 10, 0),
                                    child: Container(
                                      alignment: AlignmentDirectional.centerEnd,
                                      height: 50,
                                      width: 10,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 10, 10, 0),
                                    child: Container(
                                      height: 60,
                                      width: 100,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(51),
                                          topRight: Radius.circular(51),
                                          bottomLeft: Radius.circular(0),
                                          bottomRight: Radius.circular(0),
                                        ),
                                      ),
                                    ),
                                  ),
                                ])
                          ],
                        ),
                      ]),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: SlideTransition(
                    position: Tween<Offset>(
                      begin: Offset(1, 0),
                      end: const Offset(0, 0),
                    ).animate(_controller),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.white, // background
                                  onPrimary: Colors.blue[900] // foreground
                                  ),
                              onPressed: () {},
                              child: const Text("Main Light"),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.blue[900], // background
                                onPrimary: Colors.white, // foreground
                              ),
                              onPressed: () {},
                              child: const Text("Desk Light"),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.white, // background
                                  onPrimary: Colors.blue[900] // foreground
                                  ),
                              onPressed: () {},
                              child: const Text("Bed Light"),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Row(children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 58, 0, 0),
                    child: Container(
                      height: 510,
                      width: 390,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(51),
                          topRight: Radius.circular(51),
                          bottomLeft: Radius.circular(0),
                          bottomRight: Radius.circular(0),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Text("Intensity",
                                        style: TextStyle(
                                          fontSize: 20,
                                        ))
                                  ],
                                ),
                                Row(
                                  children: [
                                    ImageIcon(AssetImage(
                                        'assets/images/Lightbulb.png')),
                                    Slider(
                                      value: sliderValue,
                                      activeColor: Colors.orange,
                                      inactiveColor: Colors.grey,
                                      min: 0,
                                      max: 100,
                                      onChanged: (value) {
                                        setState(() {
                                          sliderValue = value;
                                        });
                                      },
                                    ),
                                    ImageIcon(AssetImage(
                                        'assets/images/Lightbulb.png')),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 50,
                            ),
                            Column(
                              children: [
                                Row(
                                  children: const [
                                    Text("Colors",
                                        style: TextStyle(
                                          fontSize: 20,
                                        ))
                                  ],
                                ),
                                SizedBox(height: 20),
                                SlideTransition(
                                  position: Tween<Offset>(
                                    begin: Offset(-1, 0),
                                    end: Offset.zero,
                                  ).animate(_controller),
                                  child: Row(
                                    children: [
                                      InkWell(
                                        child: Container(
                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.red,
                                          ),
                                        ),
                                        onTap: () {
                                          SliderThemeData(
                                            activeTrackColor: Colors.red,
                                          );
                                        },
                                      ),
                                      SizedBox(width: 20),
                                      Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.red,
                                        ),
                                      ),
                                      SizedBox(width: 20),
                                      Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.yellow,
                                        ),
                                      ),
                                      SizedBox(width: 20),
                                      Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.green,
                                        ),
                                      ),
                                      SizedBox(width: 20),
                                      Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.blue,
                                        ),
                                      ),
                                      SizedBox(width: 20),
                                      Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.orange,
                                        ),
                                      ),
                                      SizedBox(width: 20),
                                      Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white,
                                        ),
                                        child: Icon(Icons.add),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 80,
                            ),
                            Row(children: [
                              Text("Scenes", style: TextStyle(fontSize: 20)),
                            ]),
                            SizedBox(height: 20),
                            Column(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(20, 0, 20, 0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            fixedSize: Size(110, 50),
                                            primary:
                                                Colors.purple, // background
                                            onPrimary:
                                                Colors.white // foreground
                                            ),
                                        onPressed: () {},
                                        child: const Text("BirthDay"),
                                      ),
                                      SlideTransition(
                                        position: Tween<Offset>(
                                          begin: Offset(-1, 0),
                                          end: Offset.zero,
                                        ).animate(_controller),
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            fixedSize: Size(110, 50),

                                            primary: Colors.green, // background
                                            onPrimary:
                                                Colors.white, // foreground
                                          ),
                                          onPressed: () {},
                                          child: const Text("Party"),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        fixedSize: Size(110, 50),
                                        primary:
                                            Colors.deepOrange, // background
                                        onPrimary: Colors.white // foreground
                                        ),
                                    onPressed: () {},
                                    child: const Text("Relax"),
                                  ),
                                  SlideTransition(
                                    position: Tween<Offset>(
                                      begin: Offset(-1, 0),
                                      end: Offset.zero,
                                    ).animate(_controller),
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        fixedSize: Size(110, 50),

                                        primary: Colors.blue[900], // background
                                        onPrimary: Colors.white, // foreground
                                      ),
                                      onPressed: () {},
                                      child: const Text("Fun"),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ]),
                BottomNavigationBar(
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
                )
              ],
            )),
      ),
    );
  }
}
