import 'package:flutter/material.dart';

class ContainerSized extends StatelessWidget {
  const ContainerSized({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(  // Scaffold is a layout structure that provides the basic visual framework for a Material Design screen, including elements like an AppBar, body, floating action button, and more.
      appBar: AppBar(
        //backgroundColor: Colors.black,
        title: Text("Container and sizedbox"),
      ),
      body: Center( //Center is a widget that aligns its child widget to the center of its parent.
        child: Column(
          children: [
            Container( //Container is a versatile widget used to hold, style, and position child widgets with properties like padding, margin, color, size, and decoration.
                height: 50,
                width: 50,
                //color: Colors.amberAccent,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  //shape: BoxShape.circle,
                  //borderRadius: BorderRadius.circular(20),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)
                  ),
                  boxShadow: [BoxShadow(
                    blurRadius: 20,
                    spreadRadius: 10,
                  )]
                ),
                child: Text("Hello Upendra",
                style: TextStyle(
                  fontSize: 20,
                ),),
            //These are the some parameter that we can pass in the container widget 
            ),
            SizedBox(height: 20,),  //SizedBox is a widget used to give a fixed width, height, or spacing between widgets.
          ],
        ),
        
      ),
    );
  }
}