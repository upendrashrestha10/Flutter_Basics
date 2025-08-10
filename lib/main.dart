import 'package:flutter/material.dart';
import 'package:flutter_widgets/button.dart'; //Path of button.dart
//import 'package:flutter_widgets/rowscols.dart'; //Path of rowscols
//import 'package:flutter_widgets/container_sized.dart';  //Path for the Container_Sized

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
      //home:ContainerSized() , //TO run COntainer_Sized.dart
      //home: Rowscols(), //To run rowscols.dart
      home:Button(),  //To run button.dart
    );
  }
}