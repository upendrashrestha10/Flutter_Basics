import 'package:flutter/material.dart';
import 'package:flutter_widgets/rowscols.dart';
//import 'package:flutter_widgets/container_sized.dart';  //Path for the ContainerSized

void main(){
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.deepPurple,
      ),
      //home:ContainerSized() , //TO run COntainerSized
      home: Rowscols(),
    );
  }
}