import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
        
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 530,
              width: 270,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                gradient: LinearGradient(colors:[
                    Color.fromARGB(255, 121, 93, 166),
                    Colors.purpleAccent,],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight  
                  )
              ),
              child: Column(
                children: [
                  Image.asset("weathericon.png",width:270,height: 250,),
                  SizedBox(height: 20,),
                  Text("Weather",style: TextStyle(fontFamily: "Schyler",fontWeight: FontWeight.bold,fontSize: 35,color: Colors.white),),
                  Text("Forecast",style: TextStyle(fontFamily: "Trajan Pro",fontWeight: FontWeight.bold,fontSize: 35,color: Colors.yellow),),
                  SizedBox(height: 20,),
                   ElevatedButton(onPressed: (){},
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow),
                   child: Text("Get Started",style: TextStyle(
                      fontFamily: "Schyler",
                      color: const Color.fromARGB(255, 89, 87, 87),
                      fontWeight: FontWeight.bold,
                    ),))
                ],
              ),
            ),
            Container(
              height: 530,
              width: 270,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                gradient: LinearGradient(colors:[
                    Color.fromARGB(255, 121, 93, 166),
                    Colors.purpleAccent,],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight
                  )
              ),
              child: Column(
                children: [
                  Image.asset("weathericon.png",height: 150,width: 270,),
                  Text("19°C",style: TextStyle(fontFamily: "Schyler",fontWeight: FontWeight.bold,fontSize: 35,color: Colors.white),),
                  Text("Precipitations",style: TextStyle(fontFamily: "Trajan sec",fontSize: 12,color: Colors.white),),
                  Text("Max: 24°   Min:18°",style: TextStyle(fontFamily: "Trajan sec",fontSize: 12,color: Colors.white),),
                  Image.asset("House.png",width: 250,height: 120,),
                  Stack(
                    children: [
                     Container(
                          height: 130,
                          width: 270,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(colors: [
                              const Color.fromARGB(255, 177, 69, 196),
                              Color.fromRGBO(63, 78, 163, 1)],
                              begin: Alignment.topLeft,
                             end: Alignment.bottomRight
                              )
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(children: [
                              Row(
                              children: [
                                Text("Today",style: TextStyle(color: Colors.white,fontSize: 10),),
                                Spacer(),
                                Text("JULY",style: TextStyle(color: Colors.white,fontSize: 10),),
                              ],
                            ),
                            Divider(color: Colors.white,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(
                                  height: 82,
                                  width:40,
                                  child: Column(
                                    children: [
                                      Text("19°C",style: TextStyle(fontFamily: "Trajan Pro",color: Colors.white),),
                                      Image.asset("weathericon.png",fit: BoxFit.contain,),
                                      Text("15.0",style: TextStyle(fontFamily: "Trajan Pro",color: Colors.white),),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 82,
                                  width:40,
                                  child: Column(
                                    children: [
                                      Text("18°C",style: TextStyle(fontFamily: "Trajan Pro",color: Colors.white),),
                                      Image.asset("weathericon.png",fit: BoxFit.contain,),
                                      Text("16.0",style: TextStyle(fontFamily: "Trajan Pro",color: Colors.white),),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 82,
                                  width:40,
                                  child: Column(
                                    children: [
                                      Text("19°C",style: TextStyle(fontFamily: "Trajan Pro",color: Colors.white),),
                                      Image.asset("weathericon.png",fit: BoxFit.contain,),
                                      Text("18.0",style: TextStyle(fontFamily: "Trajan Pro",color: Colors.white),),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 82,
                                  width:40,
                                  child: Column(
                                    children: [
                                      Text("19°C",style: TextStyle(fontFamily: "Trajan Pro",color: Colors.white),),
                                      Image.asset("weathericon.png",fit: BoxFit.contain,),
                                      Text("20.0",style: TextStyle(fontFamily: "Trajan Pro",color: Colors.white),),
                                    ],
                                  ),
                                ),
                              ],
                            )
                            ],)
                          ),
                        ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FaIcon(FontAwesomeIcons.locationPin,color: Colors.white),
                      FaIcon(FontAwesomeIcons.circlePlus,color: Colors.white,),
                      FaIcon(FontAwesomeIcons.list,color: Colors.white,),
                      
                    ],
                  )


                ],
              ),
            ),
            Container(
              height: 530,
              width: 270,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                gradient: LinearGradient(colors:[
                    Color.fromARGB(255, 121, 93, 166),
                    Colors.purpleAccent,],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight  
                  )
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 50,),
                     Center(child: Text("North America",style: TextStyle(fontFamily: "Trajan sec",fontSize: 25,color: Colors.white),)),
                     Center(child: Text("Max: 24°   Min:18°",style: TextStyle(fontFamily: "Trajan sec",fontSize: 17,color: Colors.white),)),
                     SizedBox(height: 15,),
                     Text("7-Days Forecast°",style: TextStyle(fontFamily: "Schyler",fontSize: 17,color: Colors.white,fontWeight: FontWeight.bold),),
                     SizedBox(height: 10,),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Center(child: FaIcon(FontAwesomeIcons.chevronLeft,color: Colors.white,size: 10,)),
                        Container(
                                  height: 100,
                                  width:40,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                colors: [
                                 Color(0xFF3E2D8F),
                                 Color(0xFF9D52AC),
                                 ],
                               begin: Alignment.topLeft,
                               end: Alignment.bottomRight,
                             ),
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.white
                                  ),
                                  child: Column(
                                    children: [
                                      SizedBox(height: 5,),
                                      Text("18°C",style: TextStyle(fontFamily: "Trajan Pro",color: Colors.white,),),
                                      Image.asset("weathericon.png",fit: BoxFit.contain,),
                                      Text("TUE",style: TextStyle(fontFamily: "Trajan Pro",color: Colors.white),),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  width:40,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                colors: [
                                 Color(0xFF3E2D8F),
                                 Color(0xFF9D52AC),
                                 ],
                               begin: Alignment.topLeft,
                               end: Alignment.bottomRight,
                             ),
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.white
                                  ),
                                  child: Column(
                                    children: [
                                      SizedBox(height: 5,),
                                      Text("18°C",style: TextStyle(fontFamily: "Trajan Pro",color: Colors.white,),),
                                      Image.asset("weathericon.png",fit: BoxFit.contain,),
                                      Text("TUE",style: TextStyle(fontFamily: "Trajan Pro",color: Colors.white),),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  width:40,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                colors: [
                                 Color(0xFF3E2D8F),
                                 Color(0xFF9D52AC),
                                 ],
                               begin: Alignment.topLeft,
                               end: Alignment.bottomRight,
                             ),
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.white
                                  ),
                                  child: Column(
                                    children: [
                                      SizedBox(height: 5,),
                                      Text("18°C",style: TextStyle(fontFamily: "Trajan Pro",color: Colors.white,),),
                                      Image.asset("weathericon.png",fit: BoxFit.contain,),
                                      Text("TUE",style: TextStyle(fontFamily: "Trajan Pro",color: Colors.white),),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  width:40,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                colors: [
                                 Color(0xFF3E2D8F),
                                 Color(0xFF9D52AC),
                                 ],
                               begin: Alignment.topLeft,
                               end: Alignment.bottomRight,
                             ),
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.white
                                  ),
                                  child: Column(
                                    children: [
                                      SizedBox(height: 5,),
                                      Text("18°C",style: TextStyle(fontFamily: "Trajan Pro",color: Colors.white,),),
                                      Image.asset("weathericon.png",fit: BoxFit.contain,),
                                      Text("TUE",style: TextStyle(fontFamily: "Trajan Pro",color: Colors.white),),
                                    ],
                                  ),
                                ),
                        Center(child: FaIcon(FontAwesomeIcons.chevronRight,color: Colors.white,size: 10,)),
                      ],
                     ),
                     SizedBox(height: 20,),
                     Center(
                       child: Container(
                        height: 100,
                        width: 230,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                           border: Border.all(
                           color: Colors.deepPurple, // Border color
                            //  width: 4,                 // Border width
                            ),
                         gradient: LinearGradient(
                                  colors: [
                                   Color(0xFF3E2D8F),
                                   Color(0xFF9D52AC),
                                   ],
                                 begin: Alignment.topLeft,
                                 end: Alignment.bottomRight,
                               ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                  children: [
                                    Image.asset("cross.png",width: 15,height: 30,),
                                    SizedBox(width: 10,),
                                    Text("AIR QUALITY",style: TextStyle(fontFamily: "Trajan Pro",fontSize: 10,color: Colors.white),)
                                  ],
                                ),
                              Text("3-Low Health Risk",style: TextStyle(fontFamily: "Schyler",color: Colors.white),),
                              SizedBox(height: 8,),
                              Center(
                                child: Container(
                                  height: 2,
                                  width: 190,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 5,),
                              Row(
                                children: [
                                  Text("See More",style: TextStyle(fontFamily: "Schyler",color: Colors.white,fontSize: 12),),
                                  Spacer(),
                                  FaIcon(FontAwesomeIcons.chevronRight
                                  ,color: Colors.white,size: 12,)
                                ],
                              )
                            ],
                          ),
                        ),
                       ),
                     ),
                     SizedBox(height: 10,),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 95,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                             border: Border.all(
                            color: const Color.fromARGB(255, 105, 21, 120)
                           )
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                               Row(
                                children: [
                                  Image.asset("Star1.png",width: 20,height: 30,),
                                  SizedBox(width:5,),
                                  Text("Sun Rise",style: TextStyle(fontFamily: "Trajan sec",color: Colors.white),)
                                ],
                               ),
                                Text("5:28PM",style: TextStyle(fontFamily: "Schyler",color: Colors.white),),
                                Text("Sun Set 7:25pm",style: TextStyle(fontFamily: "Schyler",color: Colors.white,fontSize: 12),),

                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 90,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                           border: Border.all(
                            color: const Color.fromARGB(255, 105, 21, 120)
                           )
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                               Row(
                                children: [
                                  Image.asset("Star1.png",width: 20,height: 30,),
                                  SizedBox(width:5,),
                                  Text("UV INDEX",style: TextStyle(fontFamily: "Trajan sec",color: Colors.white),)
                                ],
                               ),
                                Text("4",style: TextStyle(fontFamily: "Schyler",color: Colors.white),),
                                Text("Moderate",style: TextStyle(fontFamily: "Schyler",color: Colors.white,fontSize: 12),),

                              ],
                            ),
                          ),
                        )
                      ],
                     ),
                     Center(child: Icon(Icons.menu,size:25,color: Colors.white,))
                  ],
                ),
              ),
            )
          ],
        )
      ),
    );
  }
}