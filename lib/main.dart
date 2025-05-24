import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
//   List<Widget> myList = [
//     Container(
//       height: 400,
//       width: 100,
//       color: Colors.green,
//     ),
//     Container(
//       height: 300,
//       width: 100,
//       color: Colors.blue,
//     ),
//     Container(
//       height: 200,
//       width: 100,
//       color: Colors.amber,
//     ),
//     Container(
//       height: 100,
//       width: 100,
//       color: Colors.red,
//     )
//   ];

  final List<Color> myColors = [
    Colors.green,
    Colors.blue,
    Colors.amber,
    Colors.red,
  ];

  final List<Widget> myList = List.generate(
      100,
      (index) => Text('Item ${index + 1}',
          style: TextStyle(color: Colors.amber, fontSize: 20)));

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text('My App', style: TextStyle(color: Colors.white)),
            centerTitle: true,
            backgroundColor: Colors.blue,
          ),
          body: ListView(
            children: myList,
          )),
    );
  }
}
