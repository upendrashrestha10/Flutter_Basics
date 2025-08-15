import 'package:flutter/material.dart';
import 'package:flutter_widgets/Widget/Snackbar.dart';
import 'package:flutter_widgets/Widget/alert.dart';
import 'package:flutter_widgets/Widget/dismissible.dart';
import 'package:flutter_widgets/Widget/rowscols.dart';

class Bottomnavwidget extends StatefulWidget {
  const Bottomnavwidget({super.key});

  @override
  State<Bottomnavwidget> createState() => _BottomnavwidgetState();
}

class _BottomnavwidgetState extends State<Bottomnavwidget> {
  int selectedindex = 0;

// List<Widget> widgets = [
//   Text('Home'),
//   Text('Search'),
//   Text('Add'),
//   Text('Profile'),
// ];

PageController pageController = PageController();

void onTapped(int index){
  setState(() {
    selectedindex = index;
  });
  pageController.jumpToPage(index);
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.green,
      //   title: Text('Bottom Nav Bar'),
      // ),
      
      body: PageView(
        controller: pageController,
        children: [
          Alertwidget(),
          DismissibleWidget(),
          Rowscols(),
          Snackbar(),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        items:<BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon:Icon(Icons.home),
            label:'Home'
          ),

          BottomNavigationBarItem(
            icon:Icon(Icons.search),
            label:'Search'
          ),

          BottomNavigationBarItem(
            icon:Icon(Icons.add),
            label:'Add'
          ),

          BottomNavigationBarItem(
            icon:Icon(Icons.person),
            label:'Profile'
          ),
        ],

        currentIndex: selectedindex,
        selectedItemColor:Colors.green,
        unselectedItemColor: Colors.grey,
        onTap: onTapped,
        ),
    );
  }
}