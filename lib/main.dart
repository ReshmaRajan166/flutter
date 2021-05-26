import 'package:flutter/material.dart';
import 'package:login_app/loginpage.dart';
import 'package:login_app/signuppage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'login and signup',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'WELCOME TO EDU'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title,style: TextStyle(color: Colors.grey,fontSize: 18),),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/bg.jpg"),
        fit: BoxFit.cover),),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         Padding(padding: EdgeInsets.all(10),
          child:Container(
          alignment: Alignment.center,
            child: Expanded(
              child: Image.asset("assets/log.png",
              fit: BoxFit.cover,height: 300.0,width: 400.0,),
            ),
          )
          ),
            Padding(padding: EdgeInsets.all(2),
            child: Align(
              alignment: Alignment.center,
              child: Container(
                width: 350.0,
                height: 60.0,
                child: Expanded(
                  child: ElevatedButton(
                        onPressed: () {
                        Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyLoginPage()),
                        );
                  },child: Text("LOGIN",style: TextStyle(fontSize: 20,color: Colors.white
                  ),),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.purple,
                    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(50))),
                  ),)
                ),
              ),
            ),
            ),
            Padding(padding: EdgeInsets.all(2),
            child: Align(
              alignment: Alignment.center,
              child: Container(
                width: 350.0,
                height: 60.0,
                child: Expanded(
                  child: ElevatedButton(onPressed: (){
                          Navigator.push(context,
                          MaterialPageRoute(builder: (context) =>MySignupPage()),
                          );
                  },
                  child: Text("SIGNUP",style: TextStyle(fontSize: 20,color: Colors.white)),
                  style: ElevatedButton.styleFrom(primary: Colors.grey,
                  shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(50
                  )))),),
                ),
              ),
            ),)
        ],
        ),
      ),
    );
  }
}
