import 'package:flutter/material.dart';

class MyLine extends StatefulWidget {
  const MyLine({Key? key, required this.value}) : super(key: key);

  final double value;

  @override
  State<MyLine> createState() => _MyLineState();
}

class _MyLineState extends State<MyLine> {
  final int _xPart = 60; 
 //becoz each part is divided by 60. Total Container pixels = 360
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Stack(
          children: [
            SizedBox(
              width: 362, //why 362? coz of Red Line width 2
              height: 180,
              // color: Colors.grey[200],
              child: Image.asset('assets/images/graph.png', fit: BoxFit.fill,),
            ),
            Positioned(
              left: widget.value * _xPart,
              top: 0,
              child: Container(
                height: 180.0,
                width: 2.0,
                color: Colors.red,
              ),
            ),
            Positioned(
                left: (widget.value * _xPart) + 5,
                bottom: 30,
                child: Text(widget.value.toString())),
          ],
        ),
      
    );
  }
}
