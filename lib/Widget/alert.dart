import 'package:flutter/material.dart';

class Alertwidget extends StatelessWidget {
  const Alertwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Widget"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            _showMyDialog(context);
          }, 
          child: Text("Show alert")),
      ),
    );
  }
}

Future <void> _showMyDialog (BuildContext context)async{
  return showDialog(
    context: context, 
    builder: (BuildContext context){
      return AlertDialog(
        //backgroundColor: Colors.black,
        shape:RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(20),
        ),
        //scrollable: true,
        title: Text('This is an Alert'),
        content: SingleChildScrollView(
          child: ListBody(
            children: [
              Text('This is a demo'),
              Text('This is Upendra Shrestha')
            ],
          ),
        ),

        actions: [
          TextButton(
            onPressed: (){
              Navigator.pop(context);
            }, 
            child: Text('Approve')),

            TextButton(
            onPressed: (){
              Navigator.pop(context);
            }, 
            child: Text('Cancle'))
        ],
      );
    });
}