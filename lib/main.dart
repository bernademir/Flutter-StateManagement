import 'package:flutter/material.dart';
import 'package:statemanagement/provider/flower_non_view_p.dart';
//import 'package:statemanagement/valuenotifier/flower_view_vn.dart';
//import 'package:statemanagement/vanilla/flower_view.dart';
import 'package:provider/provider.dart';

import 'models/itemprovider.dart';

//void main() => runApp(MyApp()); //vanilla ve value notifierda kullanilir

void main() => runApp(MultiProvider(
      //provider icin
      providers: [
        ChangeNotifierProvider(
          create: (context) => DarkFlowersModel(),
        ),
      ],
      child: MyApp(),
    ));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: //FlowerViewV(),
          //FlowerViewVN(),
          FlowerNonViewP(),
    );
  }
}
