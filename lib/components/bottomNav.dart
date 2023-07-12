import 'package:emart/Pages/CartScreens/cartPage.dart';
import 'package:emart/Pages/FavouriteScreens/favouritePage.dart';
import 'package:emart/Pages/GuidanceScreens/FavouriteProductPage.dart';
import 'package:emart/Pages/HomeScreens/homePage.dart';
import 'package:emart/Pages/Profile%20Screens/profilePage.dart';
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
        onTap: (index){

          if(index==0){

            Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
                );
          }
          if(index==1){

            Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FavouritePage()),
                );
          }

          if(index==2){

            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const CartPage()),
            );
          }

          if(index==3){

            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ProfilePage()),
            );
          }
        },
        items:  [

          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.house_fill,color: (currentIndex== 0)? PrimCol.primaryColor :  PrimCol.inActiveColor,),
            label: 'Home',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border_outlined,color: (currentIndex== 1)? PrimCol.primaryColor :  PrimCol.inActiveColor,),
            label: 'Favourites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_checkout_outlined,color: (currentIndex== 2)? PrimCol.primaryColor :  PrimCol.inActiveColor,),
            label: 'Home',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined,color: (currentIndex== 3)? PrimCol.primaryColor :  PrimCol.inActiveColor,),
            label: 'Home',
          ),
        ]
    ),
  );
}
