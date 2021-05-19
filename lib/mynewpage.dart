import 'package:flutter/material.dart';

class Mypage2 extends StatefulWidget {
  final String name;
  final num age;
  Mypage2({
    this.name,
    this.age,
  }); //

  @override
  _Mypage2State createState() => _Mypage2State();
}

class _Mypage2State extends State<Mypage2> {
  bool isError = false;
  List<num> list = [1, 2, 3, 4, 5];
  Map<String, dynamic> map = {
    "name": "Abin",
    "age": 20,
    "is_present": true,
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          map["is_present"].toString(),
        ),
      ),
    );
  }
}

class Student {
  final name;
  final roll;
  Student(this.name, this.roll);
}
