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
        home: MyNewPage());
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
        child: Container(
          height: 110,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: array.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                        height: 70,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              "https://s3-alpha-sig.figma.com/img/356c/5a1d/d11ee72509"
                              "06968604e654031df96066?Expires=1621209600&Signature=LhMt{"
                              "w6Uu7~HhVlUI-1QX0YclxD11eXrmw-Id41ElDjuPGWf5KpKu29OjXwIAOJ"
                              "eC-MgDJb9WWRof7YofGH6ZextbVIEakjjKOuPjYEC-gwzDgDRB2Dq~lEydl"
                              "SOdBDlSSt0Q6AXvpK8V2SihThkNjsm~CHLSBHwHU6Pcn55OF7kvfvAOFMYg"
                              "v2~etqxFKXD-x6AIb4YpUEh4t-NDDPECYBRa88wNlsbNBa2FLJUF9kBci1I"
                              "g6e0-wuGghKPPn1YLdktYbkff71sFnmY09xeCAyD3lOPLLWbzR-r~EGSfWVq"
                              "hOaXGXROW7bYyamawLnWYK6kFrqX-U2Xbp3VO5ICMiQ__&Key-Pair-Id=AP"
                              "KAINTVSUGEWH5XD5UA",
                            ),
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      Text(array[index]),
                    ],
                  ),
                );
              }),
        ),
      ),
    );
  }
}
