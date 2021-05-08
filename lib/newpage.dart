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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 25, right: 25),
          child: Align(
            alignment: Alignment.center,
            child: TextButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.green)),
              onPressed: () {
                Navigator.pop(context);
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
      ),
    );
  }
}
