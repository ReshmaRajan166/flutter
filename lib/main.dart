import 'package:ecom_app/newpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApplicaton());
}

class MyApplicaton extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        leading: Icon(
          Icons.close,
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        title: Text("MY APP"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 25.0, top: 14, bottom: 14),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyNewPage(),
                  ),
                );
              },
              child: Text(
                "Welcome Back",
                style: TextStyle(
                  color: Color.fromRGBO(99, 56, 32, 1),
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 25.0, top: 0, bottom: 14),
            child: Text(
              "Signing up or login to see our top picks for you.",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 25.0, top: 30, bottom: 15),
            child: Text(
              "Email Address",
              style: TextStyle(
                color: Color.fromRGBO(99, 56, 32, 1),
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextField(
              obscureText: false,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "eg: example@gmail.com"),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 25.0, top: 20, bottom: 15),
            child: Text(
              "Password",
              style: TextStyle(
                color: Color.fromRGBO(99, 56, 32, 1),
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 25, right: 25),
            child: Align(
              alignment: Alignment.center,
              child: TextButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.green)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyNewPage()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Login"),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
