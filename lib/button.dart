import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Button"),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton( //It is a Flutter button widget that shows text without an elevation or background and triggers an action when pressed.
              style: ButtonStyle(
                overlayColor: MaterialStateProperty.all(Colors.pink),
                elevation: MaterialStateProperty.all(20),
                backgroundColor: MaterialStateProperty.all(Colors.yellow)
              ),
              child: Text("Press me",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),),
              onPressed: (){},
            ),

            SizedBox(height: 20,),

            ElevatedButton( //It is a Flutter button widget with a raised (elevated) appearance that triggers an action when pressed.
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.green[300]),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
                ))
              ),
              onPressed: (){
                print("Hello");
              }, 
              child: Text("Press",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),),
            )
          ],
        ),
      ),
    );
  }
}