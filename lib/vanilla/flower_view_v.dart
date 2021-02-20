import 'package:flutter/material.dart';
import 'package:statemanagement/models/itemvanilla.dart';

class FlowerViewV extends StatefulWidget {
  @override
  _FlowerViewVState createState() => _FlowerViewVState();
}

class _FlowerViewVState extends State<FlowerViewV> {
  var model = FlowerModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            model.addFlower(Flower("red", "rose"));
          });
        },
      ),
      body: ListView.builder(
        itemCount: model.list.length,
        itemBuilder: (context, index) => Text(model.list[index].color),
      ),
    );
  }
}
