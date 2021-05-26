import 'package:flutter/material.dart';
class MySignupPage extends StatefulWidget {
  MySignupPage({Key key}) : super(key: key);

  @override
  _MySignupPageState createState() => _MySignupPageState();
}

class _MySignupPageState extends State<MySignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text("SIGNUP",style: TextStyle(color: Colors.grey,fontSize: 18),),
         centerTitle: true,
         backgroundColor: Colors.transparent,
         elevation: 0,
         ),

       body: Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/bg.jpg"),
          fit: BoxFit.cover),),
           child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              Padding(padding: EdgeInsets.all(10),
              child: Container(
                alignment: Alignment.center,
                child: Expanded(
                  child:Image.network("https://cgpsconline.emarquer.in/img/login_bg.png",fit: BoxFit.cover,
                  height: 350.0,width: 400.0,) ,),
              ),),
              Padding(padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "example@gmail.com"
                ),
              ),),
              Padding(padding: EdgeInsets.all(10),
              child: TextField(obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter your password here"
                ),
              ),),
              Padding(padding: EdgeInsets.all(10),
              child: Container(
                height: 60.0,
                width: 400.0,
                child: ElevatedButton(onPressed: (){},
                  child: Text("SIGNUP",style: TextStyle(color: Colors.white),),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(50)))
                  ),
                  )),
              ),
              Padding(padding: EdgeInsets.all(10),
              child: Text("Already have an Account ? Sign in",style: TextStyle(color: Colors.black,fontSize: 13),),),
              Padding(padding: EdgeInsets.all(10),
              child: Text("-----------------OR------------------",style: TextStyle(color: Colors.black,fontSize: 12),),),
              Padding(padding: EdgeInsets.all(10),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(padding: EdgeInsets.all(10),
                  child: GestureDetector(onTap: (){},
                   child:Image.network("https://1000logos.net/wp-content/uploads/2021/04/Facebook-logo.png",
                   height: 15,width: 30,) ,
                   ),),
                   Padding(padding: EdgeInsets.all(10),
                   child: GestureDetector(onTap: (){},
                   child:Image.network("https://i.pinimg.com/236x/b7/91/26/b79126d537c628d7ac5429f7f84ffc8e--twitter-logo-twitter-icon.jpg",
                   height: 15,width: 30,) ,
                   ),),
                   Padding(padding: EdgeInsets.all(10),
                   child: GestureDetector(onTap: (){},
                   child:Image.asset("assets/d.png",height: 15,width: 30,) ,),)
                ],
              ),)
          ],),
        ),
        ),
    );
  }
}
