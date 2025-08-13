import 'package:flutter/material.dart';


class Snackbar extends StatelessWidget {
  const Snackbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: ElevatedButton(
            onPressed: (){
              final snackBar = SnackBar(
                action: SnackBarAction(
                  label:'Undo', 
                  textColor: Colors.blue,
                  onPressed: (){}),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(20)
                ),
                //for floating snackbar
                behavior: SnackBarBehavior.floating,
                duration: const Duration(seconds: 5),
                content: Text("This is a Snackbar"));
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            }, 
            child: Text('Show Snackbar')),
        ),
      ),
    );
  }
}