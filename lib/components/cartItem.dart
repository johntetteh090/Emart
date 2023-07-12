import 'package:emart/Palletes/Colours.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

Widget cartItem(

    BuildContext context,
    String itemImage,
    String itemName,
    String itemPrice,
    double itemRating,
    String itemDescription,
    double width,

   ){


  return GestureDetector(
    onTap: (){

    },
    child: Container(
      width: width/2.5,
      //height: 300.0,
      margin: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),

      child: SizedBox(
        width: width/2.5,
        //height: 900.0,
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            //THE IMAGE SIDE
            Container(
              height: MediaQuery.of(context).size.height/4.5 ,

              width: width,
              clipBehavior: Clip.hardEdge,
              //margin: const EdgeInsets.only(bottom: 20.0),
              decoration:  const BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0),topRight: Radius.circular(10.0)),
                color: PrimCol.itemColor,
              ),
              child: Image.asset(itemImage,fit: BoxFit.fill,),
            ),

            Container(
              margin: const EdgeInsets.only(top: 10.0),
              child: RatingBarIndicator(
                rating: itemRating,
                itemBuilder: (context, index) => const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                itemCount: 5,
                itemSize: 12.0,
                direction: Axis.horizontal,
              ),
            ),
            Container(
                width: 120.0,
                //height: 40.0,
                margin: const EdgeInsets.only(top: 10.0),
                child: Text(itemName,
                  style: const TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w900
                  ),
                  maxLines: 2,)
            ),

            Align(
              alignment: Alignment.topLeft,
              child: Text('\$ $itemPrice',
                style: const TextStyle(
                    fontSize: 30.0,
                    color: PrimCol.primaryColor,
                    fontWeight: FontWeight.w700
                ),),
            ),


            //PRODUCT PRICE
            // Container(
            //   width: 130.0,
            //   //margin:  const EdgeInsets.only(left: 25.0,),
            //
            //
            //   child: Row(
            //    // mainAxisAlignment: MainAxisAlignment.end,
            //
            //     children: [
            //
            //       Container(
            //
            //         margin:  const EdgeInsets.only(
            //             top: 10.0),
            //         child: const Text('\$'),
            //       ),
            //
            //       const SizedBox(width: 2.0,),
            //       Container(
            //
            //           margin: const EdgeInsets.only(top: 30.0),
            //           child: Text(itemPrice,
            //             style: const TextStyle(
            //                 fontSize: 30.0,
            //                 color: PrimCol.primaryColor,
            //                 fontWeight: FontWeight.w700
            //             ),)
            //       ),
            //     ],
            //   ),
            // )
          ],
        ),
      ),
    ),
  );
   }