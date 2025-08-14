import 'package:flutter/material.dart';

class Bottomsheetwidget extends StatelessWidget {
  const Bottomsheetwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Sheet Widget"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed:(){
            showModalBottomSheet(
              backgroundColor: Colors.blueGrey,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                )
              ),
              isDismissible: false,
              enableDrag: true,
              context: context, 
              builder: (context){
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ListTile(
                      title: Text('Orange'),
                      subtitle: Text('Karan'),
                    ),

                     ListTile(
                      title: Text('Banana'),
                      subtitle: Text('Sita'),
                    ),

                     ListTile(
                      title: Text('Kiwi'),
                      subtitle: Text('Ram'),
                    ),

                     ListTile(
                      title: Text('Grapes'),
                      subtitle: Text('Sittal'),
                    ),
                  ],
                );
              });
          }, 
          child: Text("Show Bottom sheet")),
      ),
    );
  }
}