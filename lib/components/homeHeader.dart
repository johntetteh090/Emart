import 'package:emart/Palletes/Colours.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:iconsax/iconsax.dart';

PreferredSizeWidget header(String text,BuildContext context){

double width = MediaQuery.of(context).size.width/2;
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    leading: Container(
          margin: const EdgeInsets.only(left: 15.0),
          child: Text(text,
          style: const TextStyle(
            fontSize: 40.0,
            fontWeight: FontWeight.w700,
            color: Colors.black
          ),),
        ),
    leadingWidth: width,

    actions: [

          GestureDetector(
            onTap:(){

            },
            child : Container(
              margin: const EdgeInsets.only(right: 15.0),
              child:  Icon(Iconsax.shopping_cart,color: Colors.black),
            )
          )
    ],

    bottom:   const TabBar(
      labelColor: PrimCol.primaryColor, // Set the text color of the selected tab
      unselectedLabelColor: PrimCol.inActiveColor, //
      indicatorColor: PrimCol.primaryColor,
      indicatorPadding: EdgeInsets.symmetric(horizontal: 6.0),
      indicatorWeight: 2.0,
      // indicator: BoxDecoration(
      //   borderRadius: BorderRadius.circular(10.0),
      //
      // ),
      tabs: [
        Tab(
          text: 'Women',
        ),
        Tab(
          text: 'Men',
        ),
        Tab(
          text: 'Kids',
        ),
      ],
    ),
  );


  // return Row(
  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //   children: [
  //
  //     Container(
  //       margin: const EdgeInsets.only(left: 15.0),
  //       child: Text(text,
  //       style: const TextStyle(
  //         fontSize: 40.0,
  //         fontWeight: FontWeight.w700
  //       ),),
  //     ),
  //
  //     Container(
  //       margin: const EdgeInsets.only(right: 15.0),
  //       child: const Icon(CupertinoIcons.search),
  //     )
  //   ],
  // );
}
