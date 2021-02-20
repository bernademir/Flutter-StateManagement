import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanagement/models/itemprovider.dart';

import 'add_provider.dart';

class FlowerNonViewP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[],
        title: Consumer<DarkFlowersModel>(
          child: Icon(Icons.select_all),
          builder: (context, DarkFlowersModel model, child) {
            return FlatButton.icon(
              icon: child,
              label: Text(model.list.length != 0 ? model.list.last.type : ""),
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => AddFlowerP()));
              },
            );
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // RaisedButton(
            //   child: Text("dark"),
            //   onPressed: () {
            //     Provider.of<CustomThemeDataModal>(context)
            //         .setThemeData(ThemeData.dark());
            //   },
            // ),
            // RaisedButton(
            //   child: Text("light"),
            //   onPressed: () {
            //     Provider.of<CustomThemeDataModal>(context)
            //         .setThemeData(ThemeData.light());
            //   },
            // ),
            // RaisedButton(
            //   child: Text("veli"),
            //   onPressed: () {
            //     Provider.of<CustomThemeDataModal>(context)
            //         .setThemeData(veliThemeData);
            //   },
            // ),
            // RaisedButton(
            //   child: Text("purple"),
            //   onPressed: () {
            //     Provider.of<CustomThemeDataModal>(context)
            //         .setThemeData(myTheme);
            //   },
            // ),
            Expanded(
              child: ListView.builder(
                itemCount: Provider.of<DarkFlowersModel>(context, listen: true)
                    .list
                    .length,
                itemBuilder: (context, index) {
                  return Text("Hello");
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
