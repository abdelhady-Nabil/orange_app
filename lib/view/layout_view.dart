import 'package:flutter/material.dart';

import '../constant/constant.dart';
import 'home_view.dart';
class LayoutView extends StatelessWidget {
  int index =0;
List<Widget>screens=[
  HomeScreen(),
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:screens[index],
      bottomNavigationBar:BottomNavigationBar(
        currentIndex: index,
        backgroundColor: thirdColor,
        unselectedItemColor: hintFormColor,
        selectedItemColor: secondColor,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
              icon:Icon(Icons.home_filled),
              label: 'Home'
          ),
          BottomNavigationBarItem(
              icon:Icon(Icons.credit_card),
              label: 'bill'
          ),
          BottomNavigationBarItem(
              icon:Icon(Icons.history_outlined),
              label: 'History'
          ),
          BottomNavigationBarItem(
              icon:Icon(Icons.person),
              label: 'profile'
          ),
        ],
      ) ,
    );
  }
}
