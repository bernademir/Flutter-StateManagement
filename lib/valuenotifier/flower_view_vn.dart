import 'package:flutter/material.dart';
import 'package:statemanagement/models/itemvaluenotifier.dart';
import 'package:statemanagement/models/itemvanilla.dart';
import 'package:statemanagement/valuenotifier/add_valuenotifier.dart';

class FlowerViewVN extends StatefulWidget {
  @override
  _FlowerViewVNState createState() => _FlowerViewVNState();
}

class _FlowerViewVNState extends State<FlowerViewVN> {
  var model = FlowerModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => AddFlowerVN()));
        },
      ),
      body: ValueListenableBuilder(
        valueListenable: flowerNotify,
        child: Text("Hello"),
        builder: (context, FlowersModel model, child) {
          return ListView.builder(
            itemCount: model.list.length,
            itemBuilder: (context, index) => Card(
              child: Text(model.list[index].color),
            ),
          );
        },
      ),
    );
  }
}
