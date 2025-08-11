import 'package:flutter/material.dart';

class ListGrid extends StatefulWidget {
  const ListGrid({super.key});

  @override
  State<ListGrid> createState() => _ListGridState();
}

class _ListGridState extends State<ListGrid> {
  List<String> fruits = ['orange', 'apple', 'banana', 'kiwi'];
  Map fruits_person = {
    'fruits' : ['orange', 'apple', 'banana', 'kiwi'],
    'names' : ['Ram', 'sam', 'calm', 'harry']
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Grid view"),
        backgroundColor: Colors.red,
      ),
      body:Container(
      /*
        child: ListView(  //ListView in Flutter is a scrollable list of widgets arranged linearly, perfect for displaying a list of items vertically or horizontally.
        children: [
          Card( //Card in Flutter is a material design container with rounded corners and a shadow, used to present related information neatly.
            child: ListTile(
              title:Text('Orange'),
              subtitle: Text('Upendra'),
            ),
          ),

          Card( 
            child: ListTile(
              title:Text('Orange'),
              subtitle: Text('Upendra'),
            ),
          ),

           Card( 
            child: ListTile(
              title:Text('Orange'),
              subtitle: Text('Upendra'),
            ),
          ), 

        ],
        ),
      */
/* 
//Now we are going to use listview.bulder
//ListView.builder is a Flutter widget that efficiently creates a scrollable list by building items on demand using an itemBuilder callback, ideal for long or infinite lists to save memory.
      child: ListView.builder(
        itemCount:fruits.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              onTap: () {
                print((fruits_person['fruits'][index]));
              },
              leading: Icon(Icons.person),
              title: Text(fruits_person['fruits'][index]),
              subtitle:Text(fruits_person['names'][index]) ,
            ),
          );
        },),
*/

//Gridview
/* 
      child: GridView(  //GridView in Flutter displays items in a scrollable 2D grid layout, useful for showing images or cards in rows and columns.
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount:2,crossAxisSpacing: 40, mainAxisSpacing: 40),
        children: [
          Card(
            child: Center(child: Text("orange")),
          ),

          Card(
            child: Center(child: Text("orange")),
          ),

          Card(
            child: Center(child: Text("orange")),
          ),

          Card(
            child: Center(child: Text("orange")),
          ),

          Card(
            child: Center(child: Text("orange")),
          ),
        ],
      ),
*/

//Gridview.builder = same as Listvie.builder
      child: GridView.builder(
        itemCount: fruits.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), 
        itemBuilder: (context, index) {
          return Card(
            child: Center(child: Text(fruits[index])),
          );
        },
      ),
      ),
    );
  }
}