import 'package:emart/components/bottomNav.dart';
import 'package:emart/components/cartItem.dart';
import 'package:emart/components/favouriteItem.dart';
import 'package:emart/models/homeScreenItems.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

class FavouritePage extends StatefulWidget {
  const FavouritePage({super.key});

  @override
  State<FavouritePage> createState() => _FavouritePageState();
}

class _FavouritePageState extends State<FavouritePage> {
  @override
  Widget build(BuildContext context) {
    return  Placeholder(

      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text('Favourites',
            style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.w700,
                color: Colors.black
            ),),

          elevation: 0.0,

        ),
        bottomNavigationBar: bottomNav(1,context),
        body: SafeArea(
            child: GridView.builder(
                shrinkWrap: false,
                scrollDirection: Axis.vertical,
                itemCount: 4,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: MediaQuery.of(context).size.width /
                      (MediaQuery.of(context).size.height/1.4 ),
                ),
                itemBuilder: (BuildContext context, int index) {
                  return favouriteItem(
                    context,
                    HomePageItems.itemImage[index],
                    HomePageItems.itemName[index],
                    HomePageItems.itemPrice[index],
                    HomePageItems.itemRating[index],
                    HomePageItems.itemDescription[index],
                    MediaQuery.of(context).size.width,
                  );
                })
          // child: CustomScrollView(
          //   slivers: [
          //
          //     //THE APPBAR
          //     SliverToBoxAdapter(
          //       child: Column(
          //     children: [
          //
          //     const SizedBox(height: 15.0,),
          //     //THE APP BAR
          //     Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //       children:  [
          //
          //         //THE BACK BUTTON
          //         Container(
          //           margin: const EdgeInsets.only(left: 10.0),
          //           child: GestureDetector(
          //             onTap: (){
          //
          //               Navigator.pop(context);
          //             },
          //             child: const Icon(Icons.keyboard_backspace,size: 30.0,),
          //           ),
          //         ),
          //
          //         //THE HEADER
          //         const Text('Cart',
          //           style: TextStyle(
          //               fontSize: 35.0,
          //               fontWeight: FontWeight.w700
          //           ),),
          //
          //         Container()
          //       ],
          //     ),
          //   ],
          // ),
          //     ),
          //
          //     //THE CART ITSELF
          //
          //
          //     // SliverGrid(
          //     //
          //     //   delegate: SliverChildBuilderDelegate(
          //     //
          //     //         (context,index){
          //     //
          //     //       return cartItem(
          //     //         context,
          //     //           HomePageItems.itemImage[index],
          //     //           HomePageItems.itemName[index],
          //     //           HomePageItems.itemPrice[index],
          //     //           HomePageItems.itemRating[index],
          //     //           HomePageItems.itemDescription[index],
          //     //           MediaQuery.of(context).size.width,
          //     //         Colors.green[100*(index%9+1)]!,
          //     //       );
          //     //     },
          //     //     childCount: 4,
          //     //   ),
          //     //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          //     //
          //     //
          //     // ),
          //   ],
          // ),
        ),
      ),
    );
  }
}
