import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:math';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 520,
              width: 270,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 9, right: 9),
                    child: Row(
                      children: [
                        Text(
                          "Clock",
                          style: TextStyle(
                            fontFamily: "Trajan sec",
                            color: Colors.white,
                            fontSize: 30,
                          ),
                        ),
                        Spacer(),
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 90, 88, 88),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.settings,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      // Outer Circle
                      Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: const Color.fromARGB(255, 90, 88, 88),
                        ),
                      ),

                      // Middle Circle
                      Container(
                        height: 174,
                        width: 174,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: const Color.fromARGB(255, 129, 128, 128),
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            for (int i = 0; i < 4; i++)
                              Transform.rotate(
                                angle: i * pi / 2, // 90 degrees = pi/2 radians
                                child: Align(
                                  alignment: Alignment.topCenter,
                                  child: Container(
                                    width: 3,
                                    height: 20,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                      // Inner Circle
                      Container(
                        height: 96,
                        width: 96,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: const Color.fromARGB(255, 90, 88, 88),
                        ),
                        child: Center(
                          child: Text(
                            "12:30am",
                            style: TextStyle(fontFamily: "Schyler"),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Sat,Augest 26,2023",
                    style: TextStyle(
                      fontFamily: "Trajan Pro",
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                    child: Column(
                      children: [
                        Container(
                          height: 45,
                          width: 290,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 90, 88, 88),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Text(
                                  "Dubai",
                                  style: TextStyle(
                                    fontFamily: "Schyler",
                                    color: Colors.white,
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  "4:34 Am",
                                  style: TextStyle(
                                    fontFamily: "Schyler",
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 5),

                        Container(
                          height: 45,
                          width: 290,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 90, 88, 88),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Text(
                                  "Calcutta",
                                  style: TextStyle(
                                    fontFamily: "Schyler",
                                    color: Colors.white,
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  "9:54 Am",
                                  style: TextStyle(
                                    fontFamily: "Schyler",
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 5),

                        Container(
                          height: 45,
                          width: 290,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 90, 88, 88),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Text(
                                  "Cario",
                                  style: TextStyle(
                                    fontFamily: "Schyler",
                                    color: Colors.white,
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  "5:34 Am",
                                  style: TextStyle(
                                    fontFamily: "Schyler",
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Stack(
                    children: [
                      Container(
                        height: 62,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 90, 88, 88),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.alarm, color: Colors.white),
                            Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 17, 17, 17),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.lock_clock,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 17, 17, 17),
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: FaIcon(
                                FontAwesomeIcons.hourglass,
                                color: Colors.white,
                                size: 20,
                              ),
                          ),
                        ),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 17, 17, 17),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.timer,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            Container(
              height: 520,
              width: 270,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                children: [
                  SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 9),
                    child: Row(
                      children: [
                        Text(
                          "Timer",
                          style: TextStyle(
                            fontFamily: "Schyler",
                            color: Colors.white,
                            fontSize: 30,
                          ),
                        ),
                        Spacer(),
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 90, 88, 88),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.settings,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 80),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: const Color.fromARGB(255, 90, 88, 88),
                        ),
                      ),
                      Container(
                        height: 174,
                        width: 174,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 37, 37, 37),
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Text(
                            "00 : 00",
                            style: TextStyle(
                              fontFamily: "Trajan sec",
                              color: const Color.fromARGB(255, 96, 96, 96),
                              fontSize: 40,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 105,),
                  Container(
                          height: 62,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 90, 88, 88),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(30),
                              bottomRight: Radius.circular(30),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                            Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 17, 17, 17),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.alarm,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                          Icon(Icons.lock_clock, color: Colors.white),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 17, 17, 17),
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: FaIcon(
                                FontAwesomeIcons.hourglass,
                                color: Colors.white,
                                size: 20,
                              ),
                          ),
                        ),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 17, 17, 17),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.timer,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                            ],
                          ),
                        ),

                ],
              ),
            ),
            Container(
              height: 520,
              width: 270,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        FaIcon(FontAwesomeIcons.arrowLeft,color: Colors.white,),
                        SizedBox(width: 20,),
                        Text("Setting",style: TextStyle(fontFamily: "Trajan sec",color: Colors.white,fontSize: 30),)
                      ],
                    ),
                    SizedBox(height: 20,),
                  Row(
                    children: [
                      Text("Automatic Home Clock",style: TextStyle(fontFamily: "Schyler",color: const Color.fromARGB(255, 208, 207, 207),),),
                      Spacer(),
                      Icon(Icons.toggle_on,color: Colors.white,size: 30)
                    ],
                  ),
                  Text("While traveling in an area where the time is differnt,add a clock for home",style: TextStyle(fontFamily: "Schyler",color: const Color.fromARGB(255, 208, 207, 207),fontSize: 10),),
                  Divider(),
                  Row(
                    children: [
                      Text("Home Time Zone",style: TextStyle(fontFamily: "Schyler",color: const Color.fromARGB(255, 208, 207, 207),),),
                      Spacer(),
                     FaIcon(FontAwesomeIcons.chevronRight,color: Colors.white,size: 10,)
                    ],
                  ),
                  SizedBox(height: 10,),
                  Text("(GMT+5:30)Kolkata",style: TextStyle(fontFamily: "Schyler",color: const Color.fromARGB(255, 208, 207, 207),fontSize: 10),),
                  Divider()
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
