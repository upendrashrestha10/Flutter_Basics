import 'package:flutter/material.dart';

class DropDownwidget extends StatefulWidget {
  const DropDownwidget({super.key});

  @override
  State<DropDownwidget> createState() => _DropDownwidgetState();
}

class _DropDownwidgetState extends State<DropDownwidget> {
  String selectedvalue = 'Orange';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('DropDown list'),
      ),

      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(10),
              height: 70,
              // color: Colors.red,
              width: MediaQuery.of(context).size.width,
              child: DropdownButton<String>(
                dropdownColor: Colors.grey,
                isExpanded: true,
                value: selectedvalue,
                icon: Icon(Icons.arrow_circle_down_rounded),
                items:  <String> [
                  'Orange',
                  'Apple',
                  'Banana',
                  'Mango',
                  'Kiwi',
                ].map<DropdownMenuItem<String>>((String value){
                  return DropdownMenuItem(
                    value:value,
                    child:Text(value));
                }).toList(), 
                onChanged: (String? newValue) {
                  setState(() {
                    selectedvalue = newValue!;
                  });
                },
            )
        )
      ]
      ),
      ),
    );
  }
}