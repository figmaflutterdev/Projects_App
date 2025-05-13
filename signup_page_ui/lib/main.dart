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
          title: Center(child:RichText(text: TextSpan(
            children: [
              TextSpan(text: "Signup ",style: TextStyle(fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 48, 75, 97),fontSize: 25),),
              TextSpan(text: "UI ",style: TextStyle(fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 48, 75, 97),fontSize: 20),),
            ]
          ))),
        ),
        body: SignupPage(),
      ),
    );
  }
}
class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final _controller1 = TextEditingController();
  final _controller2 = TextEditingController();
  final _controller3 = TextEditingController();
  final _controller4 = TextEditingController();
  final _controller5 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 750,
        width: 1200,
        margin: EdgeInsets.all(16),
        child: Stack(
          children: [
              Container(
              color: const Color.fromARGB(255, 235, 239, 255),
               ),
               Align(
              alignment: Alignment.topLeft,
              child: Container(
              margin: EdgeInsets.only(left: 100),
              width: 300,
              height: 400,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 96, 100, 177),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30)
                )
              ),
              ),),
              Align(
              alignment: Alignment.topLeft,
              child: Container(
              margin: EdgeInsets.only(left: 120),
              width: 300,
              height: 400,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 175, 179, 255),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30)
                )
              ),
              ),),
              Center(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 120.0,top: 160),
                      child: Image.asset("object2.png",fit: BoxFit.cover,width: 380,height: 380,),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:8.0),
                      child: Column(
                                      children: [
                                      Container(
                                      margin:EdgeInsets.only(left: 150,top: 10),
                                      height: 480,
                                      width: 400,
                                      child: Padding(
                                        padding: const EdgeInsets.only(left:8.0),
                                        child: Column(
                      children: [
                        Center(child: Text("Please Fill out form to Register!",style: TextStyle(color: const Color.fromARGB(255, 79, 90, 139),fontSize: 16,fontWeight: FontWeight.bold),)),
                        SizedBox(height: 17,),
                        TextField(
                          controller: _controller1,
                          decoration: InputDecoration(
                            labelText:"FullName",
                            border: OutlineInputBorder(
                               borderRadius: BorderRadius.circular(17), 
                            ),
                          ),
                        ),
                        SizedBox(height: 13,),
                        TextField(
                          controller: _controller2,
                          decoration: InputDecoration(
                            labelText:"Username",
                            border: OutlineInputBorder(
                               borderRadius: BorderRadius.circular(17), 
                            ),
                          ),
                        ),
                        SizedBox(height: 13,),
                        TextField(
                          controller: _controller3,
                          decoration: InputDecoration(
                            labelText:"Email",
                            border: OutlineInputBorder(
                               borderRadius: BorderRadius.circular(17), 
                            ),
                          ),
                        ),
                        SizedBox(height: 13,),
                        TextField(
                          controller: _controller4,
                          decoration: InputDecoration(
                            labelText:"Password",
                            border: OutlineInputBorder(
                               borderRadius: BorderRadius.circular(17), 
                            ),
                          ),
                        ),
                        SizedBox(height: 13,),
                        TextField(
                          controller: _controller5,
                          decoration: InputDecoration(
                            labelText:"Confirm Password",
                            border: OutlineInputBorder(
                               borderRadius: BorderRadius.circular(17), 
                            ),
                          ),
                        ),
                        SizedBox(height: 12,),
                        ElevatedButton(
                          onPressed: (){},
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(400, 50), // Width: 200, Height: 50
                            backgroundColor: Color.fromARGB(255, 139, 144, 223),
                            foregroundColor:Colors.white,
                            shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          child:Text("Register",style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
                          SizedBox(height: 20,),
                          Text("Yes I have an account? Login",style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: Color.fromARGB(255, 12, 12, 12)),),
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                               Padding(
                                 padding: const EdgeInsets.all(7.0),
                                 child: FaIcon(FontAwesomeIcons.facebook,color: const Color.fromARGB(255, 110, 113, 183),),
                               ),
                               Padding(
                                 padding: const EdgeInsets.all(7.0),
                                 child: FaIcon(FontAwesomeIcons.whatsapp,color: const Color.fromARGB(255, 110, 113, 183),),
                               ),
                               Padding(
                                 padding: const EdgeInsets.all(7.0),
                                 child: FaIcon(FontAwesomeIcons.twitter,color: const Color.fromARGB(255, 110, 113, 183),),
                               ),
                            ],
                          )],
                                        ),
                                      ),
                                    ),
                                      ],
                                    ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}