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
              TextSpan(text: "Login ",style: TextStyle(fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 48, 75, 97),fontSize: 25),),
              TextSpan(text: "UI ",style: TextStyle(fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 48, 75, 97),fontSize: 20),),

            ]
          ))),
        ),
        body: LoginPage(),
      ),
    );
  }
}
//Loginpage
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _controller1 = TextEditingController();
  final _controller2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.all(16),
      width: 1200,
      height: 720,
      child: Stack(
     children: [
      Container(
        color: const Color.fromARGB(255, 235, 239, 255),
      ),
      Align(
        alignment: Alignment.centerRight,
        child: Container(
          width: 450,
          color: const Color.fromARGB(255, 175, 179, 255),
        ),
      ),
      Center(
        child: Row(
         children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                margin:EdgeInsets.only(left: 90,top: 50,),
                height: 400,
                width: 400,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Center(child: Text("Welcome Back!",style: TextStyle(color: const Color.fromARGB(255, 79, 90, 139),fontSize: 20,fontWeight: FontWeight.bold),)),
                      SizedBox(height: 30,),
                      TextField(
                        controller: _controller1,
                        decoration: InputDecoration(
                          labelText:"Username",
                          border: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(17), 
                          ),
                        ),
                      ),
                      SizedBox(height: 30,),
                      TextField(
                        controller: _controller2,
                        decoration: InputDecoration(
                          labelText:"Pasword",
                          border: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(17), 
                          ),
                        ),
                      ),
                      SizedBox(height: 30,),
                      ElevatedButton(
                        onPressed: (){},
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(400, 50), // Width: 200, Height: 60
                          backgroundColor: Color.fromARGB(255, 139, 144, 223),
                          foregroundColor:Colors.white,
                          shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child:Text("Login",style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
                        SizedBox(height: 30,),
                        Text("Don't Have an account? Register",style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: Color.fromARGB(255, 12, 12, 12)),),
                        SizedBox(height: 30,),
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
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(35.0),
            child: Image.asset("object.png",
            width: 400,
            height: 400,
            fit:BoxFit.cover,),
          )
         ],
        ),
      ),
    ],
  ),

  )
  );
  }
}
