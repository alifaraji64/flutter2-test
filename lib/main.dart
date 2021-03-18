/* **************************************
                 * START*
************************************** */

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(LAWidget());
}

class LAWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(body: LHERO()),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

class LHERO extends StatefulWidget {
  @override
  _LHEROState createState() => _LHEROState();
}

class _LHEROState extends State<LHERO> {
  List<Widget> list = [];
  Widget createWidget() {
    print(Random().nextInt(10));
    list.add(new Icon(Icons.ac_unit_sharp,
        color: Color.fromARGB(255, Random().nextInt(255), Random().nextInt(255),
            Random().nextInt(255))));
    isClicked = true;
    return new Row(children: list);
  }

  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            icon: Icon(Icons.point_of_sale),
            color: Colors.blue,
            onPressed: () {
              setState(() {
                createWidget();
              });
            }),
        Row(
          children: list,
        )
      ],
    );
  }
}
