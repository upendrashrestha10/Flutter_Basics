import 'package:flutter/material.dart';
import 'package:flutter_widgets/Widget/alert.dart';
import 'package:flutter_widgets/Widget/animated_text.dart';
import 'package:flutter_widgets/Widget/bottomnav.dart';
import 'package:flutter_widgets/Widget/bottomsheet.dart';
import 'package:flutter_widgets/Widget/dismissible.dart';
import 'package:flutter_widgets/Widget/drawer.dart';
import 'package:flutter_widgets/Widget/dropdown.dart';
import 'package:flutter_widgets/Widget/form.dart';
import 'package:flutter_widgets/Widget/tabbar.dart';

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
      home:Tabbarwidget(),
    );
  }
}