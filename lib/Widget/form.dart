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

  //.......................FUNCTIONS..................
  trysubmit(){
    final isvalid = _formKey.currentState!.validate();
    if(isvalid){
      _formKey.currentState!.save();
      submitform();
    }else{
      print("error");
    }
  }

  submitform(){
    print(firstname);
    print(lastname);
    print(email);
    print(password);
  }
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
                key:ValueKey('lastname'),
                validator: (value) {
                  if (value.toString().isEmpty){
                    return 'Last Name should not be Empty';
                  }else{
                    return null;
                  }
                },

                onSaved:(value){
                  lastname = value.toString();
                },

              ),
              
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Enter your Email'
                ),
                key:ValueKey('email'),
                validator: (value) {
                  if (value.toString().isEmpty){
                    return 'Email should not be Empty';
                  }else{
                    return null;
                  }
                },

                onSaved:(value){
                  email = value.toString();
                },
              ),
              
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Enter password'
                ),
                key:ValueKey('password'),
                validator: (value) {
                  if (value.toString().length<=8){
                    return 'Minimum length of the password should be 6';
                  }else{
                    return null;
                  }
                },

                onSaved:(value){
                  password = value.toString();
                },
              ),

              TextButton(
                onPressed: (){
                  trysubmit();
                }, 
                child: Text('Submit'))
            ],
          )),
      ),
    );
  }
}