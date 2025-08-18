import 'package:flutter/material.dart';

class Tabbarwidget extends StatelessWidget {
  const Tabbarwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
     // initialIndex: 1,
      length: 3, 
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text('WhatsApp'),
          bottom: TabBar(tabs: [
            Tab(icon: Icon(Icons.chat,),text: 'Chat',),
            Tab(icon: Icon(Icons.call,),text: 'Calls',),
            Tab(icon: Icon(Icons.person,),text: 'Profile',),

          ]),
        ),

        body: TabBarView(children: [
          Container(child: Center(child: Text('Chats', style: TextStyle(fontSize: 30, color: Colors.black),), ),),
          Container(child: Center(child: Text('Calls', style: TextStyle(fontSize: 30, color: Colors.black),), ),),
          Container(child: Center(child: Text('Profile', style: TextStyle(fontSize: 30, color: Colors.black),), ),),
        ]),
      )
    );
  }
}