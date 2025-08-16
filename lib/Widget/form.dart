import 'package:flutter/material.dart';

class Formwidget extends StatefulWidget {
  const Formwidget({super.key});

  @override
  State<Formwidget> createState() => _FormwidgetState();
}

class _FormwidgetState extends State<Formwidget> {
  final _formKey = GlobalKey<FormState>();
  String firstname = '';
  String lastname = '';
  String email = '';
  String password = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Widget'),
      ),

      body: Center(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Enter first name'
                ),
                key: ValueKey('firstname'),
                validator: (value){
                  if (value.toString().isEmpty){
                    return 'First Name should not be Empty';
                  }else{
                    return null;
                  }
                },
                onSaved:(value){
                  firstname = value.toString();
                },
              ),

              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Enter last name'
                ),
              )
            ],
          )),
      ),
    );
  }
}