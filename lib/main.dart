import 'dart:developer';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'To Do List',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> todoitem = <String>[];

  final TextEditingController myController = TextEditingController();

  @override
  void initState() {
    super.initState();
    readFromDataBase();
  }

  Future writeToFirebase(String nameOfCar) async {
    if (nameOfCar.isNotEmpty) {
      await FirebaseFirestore.instance
          .collection("cars")
          .doc()
          .set({"name": nameOfCar});
    }
  }

  Future readFromDataBase() async {
    final carDocuments =
        await FirebaseFirestore.instance.collection("cars").get();
    List<String> carNames = [];
    carDocuments.docs.forEach((doc) {
      carNames.add(doc.data()["name"]);
    });
    log(carNames.toString());
    setState(() {
      todoitem = carNames;
    });
  }

  void showalert() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        elevation: 16,
        title: Text("Add to your List"),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: myController,
              autofocus: true,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () async {
                    await writeToFirebase(myController.text);
                    await readFromDataBase();
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    "Add",
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: "Raleway",
                    ),
                  ),
                  style: ElevatedButton.styleFrom(primary: Colors.green),
                ),
                SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    myController.clear();
                  },
                  child: Text("Cancel"),
                  style: ElevatedButton.styleFrom(primary: Colors.green),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void additem(String title) {
    setState(() {
      todoitem.add(title);
    });
    myController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () async {
              final listOfItems = await readFromDataBase();
              setState(() {
                todoitem = listOfItems;
              });
            },
            icon: Icon(Icons.refresh),
          )
        ],
        title: const Text('To-Do List'),
        backgroundColor: Colors.green,
      ),
      body: ListView(children: getitems()),
      floatingActionButton: FloatingActionButton(
        onPressed: showalert,
        tooltip: 'todo',
        backgroundColor: Colors.green,
        child: Icon(Icons.add),
      ),
    );
  }

  Widget valuetodo(String title) {
    return ListTile(
      title: Text(title),
    );
  }

  List<Widget> getitems() {
    final List<Widget> item = <Widget>[];
    for (String title in todoitem) {
      item.add(valuetodo(title));
    }
    return item;
  }
}
