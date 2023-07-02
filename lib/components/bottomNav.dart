import 'package:emart/Palletes/Colours.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

Widget bottomNav(int currentIndex, BuildContext context){

  return Theme(

    data: Theme.of(context).copyWith(
      // sets the background color of the `BottomNavigationBar`
        canvasColor: Colors.white,
        // sets the active color of the `BottomNavigationBar` if `Brightness` is light
        primaryColor: Colors.white,
        textTheme: Theme
            .of(context)
            .textTheme
            .copyWith(caption: const TextStyle(color: Colors.yellow))),
    child:  BottomNavigationBar(
        currentIndex: currentIndex,
        elevation: 0.0,
        items: const [

          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.house_fill,color: PrimCol.primaryColor,),
            label: 'Home',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border_outlined,color: PrimCol.inActiveColor),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_checkout_outlined,color: PrimCol.inActiveColor),
            label: 'Home',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined,color: PrimCol.inActiveColor),
            label: 'Home',
          ),
        ]
    ),
  );
}
