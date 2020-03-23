import 'package:flutter/material.dart';
import 'package:mobile_flutter/custom/style/default-measures.dart';
import 'package:mobile_flutter/pages/home-page/home-page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Builder(
        builder: (context) {
          DefaultMeasures.setMeasures(
            mediaQueryData: MediaQuery.of(context)
          );
          
          return HomePage();
        }
      ),
    );
  }
}