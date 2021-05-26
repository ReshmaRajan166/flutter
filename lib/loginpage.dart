import 'package:flutter/material.dart';
class MyLoginPage extends StatefulWidget {
  MyLoginPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyLoginPageState createState() => _MyLoginPageState();
}
class _MyLoginPageState extends State<MyLoginPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
   title: Text("LOGIN",style: TextStyle(color: Colors.grey,fontSize: 18),),
   centerTitle: true,
   elevation: 0,
   backgroundColor: Colors.transparent,
 ),
 body :Container(
  constraints: BoxConstraints.expand(),
  decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/bg.jpg"),
  fit: BoxFit.cover),),
  child:SingleChildScrollView(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Padding(padding: EdgeInsets.all(10),
      child:Container(
        alignment: Alignment.center,
        child: Expanded(
          child: Image.network("https://miro.medium.com/max/1043/1*uMxwajzG5l3n2x7_izXdHw.png",
          fit: BoxFit.cover,height: 400.0,width: 500.0,),
          ),
      )
      ),
       Padding(padding: EdgeInsets.all(10),
        child: Container(
          width: 350.0,
          child: TextField(decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: "example@gmail.com"
          ),),
        ),),
        Padding(padding: EdgeInsets.all(2),
        child: Container(
          width: 350.0,
          height: 50.0,
          child: TextField(obscureText: true ,decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: "Enter your password here",
          ),),
        ),),
        Padding(padding: EdgeInsets.all(10),
        child: Container(
          width: 400.0,
          height: 60.0,
          child:ElevatedButton(onPressed: (){},
          style: ElevatedButton.styleFrom(
            primary: Colors.orange,
            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(50)))
          ), child: Text("LOGIN",style: TextStyle(color: Colors.white),),
         ) ,),),
        Padding(padding: EdgeInsets.all(10),
        child: Text("Dont have an account?SignUp",style: TextStyle(color: Colors.black
        ,fontSize: 13),),)
      ],
    ),
  ),
),
);
}
}
