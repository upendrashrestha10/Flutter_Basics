import 'package:flutter/material.dart';


class Snackbar extends StatelessWidget {
  const Snackbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: ElevatedButton(
            onPressed: (){}, 
            child: Text('Show')),
        ),
      ),
    );
  }
}