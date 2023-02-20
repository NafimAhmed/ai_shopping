
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'pages/Account.dart';
import 'pages/cart_page.dart';
import 'pages/home_page.dart';

// class BottomBar extends StatefulWidget{
//   const BottomBar({Key? key}):super(key: key);
//   @override
//   State<BottomBar> createState()=> _BottomBarState();
//
// }

class BottomBar extends StatelessWidget{

  RxInt setSelectedIndex=0.obs;

  static final List<Widget> _widgetOptions =<Widget>[

     HomeScreen(),
    CartPage(),
     //TicketScreen(),
    //const TicketScreenMain(),
    //const Text("ticket"),
    //const Text("Profile"),
     AccountPage(),

  ];


  void onItemTapped(int index){

    setSelectedIndex.value=index;

    // setState((){
    //   setSelectedIndex=index;
    //
    // });

  }



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Obx(() => Scaffold(
      // appBar: AppBar(
      //   title: Text("My ticket"),
      // ),

      body: Container(
          child: Center(
            child: _widgetOptions[setSelectedIndex.value],
          )
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: setSelectedIndex.value,
        onTap: onItemTapped,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.deepPurple,
        unselectedItemColor: Colors.pink.shade800,
        items: [
          BottomNavigationBarItem(
              activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
              icon: Icon(FluentSystemIcons.ic_fluent_home_regular, size: 30,),
              label: "Home"
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(FluentSystemIcons.ic_fluent_airplane_filled),
            icon: Icon(FluentSystemIcons.ic_fluent_airplane_regular, size: 30,),label: "Cart",),
          // BottomNavigationBarItem(activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
          //     icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular, size: 30,),label: "Ticket"),
          BottomNavigationBarItem(activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
              icon: Icon(FluentSystemIcons.ic_fluent_person_regular, size: 30,),label: "Profile"),
        ],
      ),
    )
    );
  }
  
}