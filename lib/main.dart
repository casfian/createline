import 'package:createline/widgets/myline.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: const [
          SizedBox(height: 100),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Overall Score', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
          ),
          MyLine(value: 2), //Overall Score 
        ],
      ),
    ));
  }
}
