import 'package:flutter/material.dart';
import 'package:flutter_widgets/Widget/alert.dart';
import 'package:flutter_widgets/Widget/bottomsheet.dart';
import 'package:flutter_widgets/Widget/dismissible.dart';
import 'package:flutter_widgets/Widget/drawer.dart';

void main(){
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.deepPurple,
      ),
      home: Bottomsheetwidget(),
    );
  }
}