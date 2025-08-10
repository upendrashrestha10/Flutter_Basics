import 'package:flutter/material.dart';

class Rowscols extends StatelessWidget {
  const Rowscols({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ROws and columns"),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,//It is used to get the current screen's height in Flutter for responsive UI design.
        width: MediaQuery.of(context).size.width, //It is used to get the current screen's width in Flutter for responsive UI design.
        color: Colors.yellow,
        // child: Row( //in Flutter a Row is a widget that arranges its children horizontally in a single line.
        //   mainAxisAlignment: MainAxisAlignment.center,  //It defines how children are positioned along the main axis (horizontal for Row, vertical for Column).
        //   crossAxisAlignment: CrossAxisAlignment.center,  //It defines how children are aligned along the cross axis (vertical for Row, horizontal for Column).
        //   children: [
        //     Container(height: 60,width: 60,color: Colors.red,),
        //     Container(height: 60,width: 60,color: Colors.white,),
        //     Container(height: 60,width: 60,color: Colors.black,),
        //     Container(height: 60,width: 60,color: Colors.blue,),
        //   ],
        // ),

        child: Column(  //It is a Flutter widget that arranges its children vertically in a single line.
          mainAxisAlignment: MainAxisAlignment.spaceBetween,  //same as a ROw
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(height: 60,width: 60,color: Colors.red,),
            Container(height: 60,width: 60,color: Colors.white,),
            Container(height: 60,width: 60,color: Colors.black,),
            Container(height: 60,width: 60,color: Colors.blue,),
          ],
        ),
      ),
    );
  }
}