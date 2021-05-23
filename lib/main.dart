import 'package:flutter/material.dart';

void main() {
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
  final List<String> todoitem=<String>[];
    final TextEditingController myController = TextEditingController();
  void showalert(){
    showDialog(context: context, builder: (context) => AlertDialog(
      insetPadding: EdgeInsets.symmetric(
              horizontal: 10.0,
              vertical: 150.0,
            ),
      elevation: 16,
      title: Text("Add to your List"),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [TextField(controller: myController,autofocus: true,),
    
      Row(
        children: <Widget>
        [Expanded(
          child:ElevatedButton(onPressed:(){Navigator.of(context).pop();
          additem(myController.text);},
          child: Text("add",
          style: TextStyle(fontSize: 15,fontFamily: "Raleway",),),
          style: ElevatedButton.styleFrom(primary: Colors.green),
          ),
        ),
          Expanded( 
child: ElevatedButton(onPressed: (){Navigator.of(context).pop();myController.clear();}, 
child: Text("Cancel"),style: ElevatedButton.styleFrom(primary: Colors.green),),
      ),
      ],
      ),],
      ),
    ));
  }
  void additem(String title)
  {
    setState(() {
      todoitem.add(title);
          
     });
     myController.clear();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('To-Do List'),backgroundColor: Colors.green,),
body: ListView(
        children: getitems()
      ),
      floatingActionButton: FloatingActionButton(
     onPressed: showalert,
        tooltip: 'todo',
        backgroundColor: Colors.green,
        child: Icon(Icons.add),
      ),
    );
  }
  Widget valuetodo(String title)
  {
    return ListTile(title: Text(title),);
  }
List<Widget> getitems(){
  final List<Widget> item=<Widget>[];
  for (String title in todoitem) {
    item.add(valuetodo(title));
    
  }
  return item;
  }
}