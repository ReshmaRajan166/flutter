import 'package:ecom_app/mynewpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApplicaton());
}

class MyApplicaton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Mypage2(
        name: "Adfsd",
        age: 21,
      ),
    );
  }
}

class MyNewPage extends StatefulWidget {
  MyNewPage({Key key}) : super(key: key);

  @override
  _MyNewPageState createState() => _MyNewPageState();
}

class _MyNewPageState extends State<MyNewPage> {
  @override
  Widget build(BuildContext context) {
    List<String> array = [
      "Table",
      "Lamp",
      "Chair",
      "Book",
      "Glass",
      "Pillow",
      "Laptop"
    ];

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(),
            TextButton(
              onPressed: () {},
              child: Text("Call"),
            )
          ],
        ),
      ),
    );
  }
}
