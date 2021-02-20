import 'package:flutter/material.dart';
import 'package:statemanagement/models/itemvaluenotifier.dart';
import 'package:statemanagement/models/itemvanilla.dart';

class AddFlowerVN extends StatefulWidget {
  @override
  _AddFlowerVNState createState() => _AddFlowerVNState();
}

class _AddFlowerVNState extends State<AddFlowerVN> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            flowerNotify.addFlower(Flower("blue", "rose"));
          },
        ),
      ),
    );
  }
}
