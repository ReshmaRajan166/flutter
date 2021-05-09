import 'package:flutter/material.dart';

class MyNewPage extends StatefulWidget {
  MyNewPage({Key key}) : super(key: key);

  @override
  _MyNewPageState createState() => _MyNewPageState();
}

class _MyNewPageState extends State<MyNewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Text(
            "hiiiii",
            style: TextStyle(
              color: Colors.black,
            ),
          )
        ],
      ),
    );
  }
}
