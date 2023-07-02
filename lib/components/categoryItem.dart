import 'package:emart/Palletes/Colours.dart';
import 'package:emart/models/homeScreenItems.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

Widget categoryItem(BuildContext context, int index, double width){
   return Container(
     margin: const EdgeInsets.symmetric(horizontal: 15.0),
     child: Row(
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [

          // PRODUCT IMAGE
          Container(
             width: 80.0,
             height: 80.0,
              clipBehavior: Clip.hardEdge,
              margin: const EdgeInsets.only(bottom: 20.0),
              decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(15.0),
                color: PrimCol.itemColor,
              ),
             child: Image.asset(HomePageItems.itemImage[index],fit: BoxFit.fill,),
          ),

         //PRODUCT TITLE AND SUBTITLE
         Column(
           mainAxisSize: MainAxisSize.min,
           mainAxisAlignment: MainAxisAlignment.start,
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [

             //PRODUCT TITLE
             Container(
               width: 120.0,
               //height: 40.0,
                 margin: const EdgeInsets.only(left: 10.0,top: 10.0),
               child: Text(HomePageItems.itemName[index],
               style: const TextStyle(
                 fontSize: 20.0,
                 fontWeight: FontWeight.w900
               ),
               maxLines: 2,)
             ),

             //PRODUCT DESCRIPTION
             Container(
                 width: 100.0,
                 //height: 40.0,
                 margin: const EdgeInsets.only(left: 10.0),
                 child: Text(HomePageItems.itemDescription[index],
                   style: const TextStyle(
                       fontSize: 15.0,
                       color: PrimCol.inActiveColor
                   ),
                 maxLines: 2,)
             ),


             //PRODUCT RATING
             Container(
               margin: const EdgeInsets.only(left: 10.0),
               child: RatingBarIndicator(
                 rating: HomePageItems.itemRating[index],
                 itemBuilder: (context, index) => const Icon(
                   Icons.star,
                   color: Colors.amber,
                 ),
                 itemCount: 5,
                 itemSize: 12.0,
                 direction: Axis.horizontal,
               ),
             ),

           ],
         ),


         //PRODUCT PRICE
        Container(
          width: 130.0,
          //margin:  const EdgeInsets.only(left: 25.0,),


          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,

            children: [

             Container(

               margin:  const EdgeInsets.only(
                   top: 30.0),
               child: const Text('\$'),
             ),

              const SizedBox(width: 2.0,),
              Container(

                  margin: const EdgeInsets.only(top: 30.0),
                  child: Text(HomePageItems.itemPrice[index],
                    style: const TextStyle(
                        fontSize: 30.0,
                        color: PrimCol.primaryColor,
                      fontWeight: FontWeight.w700
                    ),)
              ),
            ],
          ),
        )
       ],
     ),
   );
}
