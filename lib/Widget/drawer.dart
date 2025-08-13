import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.blueAccent,
        child: ListView(
          children:[ 
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: Container(
                padding: EdgeInsets.all(5),
                //color: Colors.amber,
                child: Row(
                  children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: NetworkImage("https://media.istockphoto.com/id/1212710606/photo/young-handsome-man-with-beard-wearing-casual-t-shirt-standing-over-white-background-looking.jpg?s=612x612&w=0&k=20&c=TqO46wTlF5ZA3lFpIfNq2br-ruuKpdZXSegCkHNoqMo="),
                  ),

                  SizedBox(width: 10,),
                  Column(
                    children: [
                      Text('Upendra Shrestha'),
                      Text("shresthaupendra1234@gmail.com"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.account_circle),
                          Text("shresthaupendra-portfolio.netlify.app",
                          style: TextStyle(fontSize: 12),),
                        ],
                      )
                    ],
                  )
                ],),
              )
            ),

            ListTile(
              leading: Icon(Icons.folder),
              title: Text('My files'),
            ),

             ListTile(
              leading: Icon(Icons.group),
              title: Text('Shared with me'),
            ),

             ListTile(
              leading: Icon(Icons.star),
              title: Text('Starred'),
            ),

             ListTile(
              leading: Icon(Icons.delete),
              title: Text('Trash'),
            ),

             ListTile(
              leading: Icon(Icons.upload),
              title: Text('Uploads'),
            ),

             ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
            ),
          ]
        ),
      ),
      appBar: AppBar(
        title: Text("Drawer widget"),
      ),
      body: Container(
        child: Center(
          child: Text("I am a clueless begineer"),
        ),
      ),
    );
  }
}