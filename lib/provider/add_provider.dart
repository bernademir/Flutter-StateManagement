import 'package:flutter/material.dart';
import 'package:statemanagement/models/itemprovider.dart';
import 'package:provider/provider.dart';

class AddFlowerP extends StatefulWidget {
  @override
  _AddFlowerPState createState() => _AddFlowerPState();
}

class _AddFlowerPState extends State<AddFlowerP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Provider.of<DarkFlowersModel>(context, listen: false)
                .addFlower(Flower("dark", "daisy"));
          },
        ),
      ),
    );
  }
}
