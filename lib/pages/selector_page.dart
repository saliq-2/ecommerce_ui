import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'cart.dart';
import 'homepage.dart';

class selector_page extends StatefulWidget
{
  @override
  State<selector_page> createState() => _selector_pageState();
}

class _selector_pageState extends State<selector_page> {
  @override
  Widget build(BuildContext context) {
    int selected_index=0;
    List pages=[homepage(),cart()];

    return Scaffold(
      bottomNavigationBar:
      GNav(
        selectedIndex: 0,
        activeColor: Colors.blue,
        padding: EdgeInsets.all(20),
        gap: 13,
        onTabChange: (index){
          setState((){
            selected_index=index;
          });
        },
        tabs: [
          GButton(
            icon: Icons.home,
            // onPressed: (index)
            // {
            //   setState((){
            //    selected_index= index;
            //   });
            // },

          ),

          GButton(
            icon: Icons.shopping_cart,onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>cart()));
          },),
          GButton(icon: Icons.person),

        ],
      ),
      body:pages[selected_index] ,
    );
  }
}