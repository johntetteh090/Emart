import 'package:emart/components/bottomNav.dart';
import 'package:emart/components/cartItem.dart';
import 'package:emart/components/favouriteItem.dart';
import 'package:emart/models/homeScreenItems.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:provider/provider.dart';
import 'package:emart/Pages/FavouriteScreens/favourite_viewmodel.dart';
import 'package:emart/Pages/UserItemChooseScreen/itemChoose_viewmodel.dart';
import 'package:emart/Palletes/Colours.dart';

class FavouritePage extends StatefulWidget {
  const FavouritePage({super.key});

  @override
  State<FavouritePage> createState() => _FavouritePageState();
}

class _FavouritePageState extends State<FavouritePage> {
  @override
  Widget build(BuildContext context) {

    var readNotifier = Provider.of<ItemChooseModel>(context);
    var pressNotifier = Provider.of<FavouriteModel>(context, listen: false);
    var readCartNotifier = Provider.of<FavouriteModel>(context);

    return  Placeholder(

      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text('Favourites',
            style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w700,
                color: Colors.black
            ),),

          elevation: 0.0,

        ),
        bottomNavigationBar: bottomNav(1,context),
        body: SafeArea(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height : MediaQuery.of(context).size.height,
              margin: const EdgeInsets.symmetric(horizontal: 25.0,vertical: 10.0),
              child: Column(
                children: [

                  Expanded(
                    child : ListView.builder(
                      itemCount: readNotifier.likedItemsName.length,
                      itemBuilder: (BuildContext context, int index)
                      {
                        return Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            border : Border.all(color: Color(0xffd9d9d9), width: 2)
                          ),
                          child : Row(
                            children: [

                             Container(
                               width: 120,
                               height : 100,

                               child :  Image.asset('${readNotifier.likedItemImage[index]}'),
                             ),

                              const SizedBox(width : 20.0),

                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment : CrossAxisAlignment.start,
                                children:[

                                  Text('${readNotifier.likedItemsName[index]}',
                                  style : TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold
                                  )),
                                  Text('${readNotifier.likedItemPricing[index]}',
                                      style : TextStyle(
                                          fontSize: 25.0,

                                      )),

                                  const SizedBox(height: 12.0,),

                                  Row(
                                    children: [

                                      GestureDetector(
                                        onTap:(){

                                          pressNotifier.removed(
                                              readNotifier.likedItemsName[index],
                                              readNotifier.likeItemDesc[index],
                                              readNotifier.likedItemImage[index],
                                              readNotifier.likedItemRating[index],
                                              readNotifier.likedItemPricing[index]
                                          );
                                         },
                                        child : Text('Remove',
                                            style : TextStyle(
                                                color : Color(0xffd9d9d9),
                                              fontSize: 18.0
                                            ))
                                      ),

                                      Container(
                                        //width: MediaQuery.of(context).size.width,
                                        //height: 38.0,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10.0),
                                          //border: Border.all(color : )
                                        ),
                                        margin: const EdgeInsets.symmetric(horizontal: 15.0),

                                        clipBehavior : Clip.hardEdge,
                                        child: TextButton(
                                            onPressed: () {

                                              pressNotifier.added(
                                                  readNotifier.likedItemsName[index],
                                                  readNotifier.likeItemDesc[index],
                                                  readNotifier.likedItemImage[index],
                                                  readNotifier.likedItemRating[index],
                                                  readNotifier.likedItemPricing[index]
                                              );

                                            },
                                            style: TextButton.styleFrom(
                                                foregroundColor: Colors.white, textStyle: const TextStyle(fontSize: 20.0),
                                                backgroundColor: (!readCartNotifier.addedItemsName.contains(readNotifier.likedItemsName[index]))
                                                    ? PrimCol.primaryColor : Colors.white,
                                              padding: const EdgeInsets.symmetric(horizontal: 25.0),
                                              side: BorderSide(color: PrimCol.primaryColor),

                                            ),
                                            child: Text((!readCartNotifier.addedItemsName.contains(readNotifier.likedItemsName[index]))
                                                ? '+  Cart' : 'UnAdd',
                                                style : TextStyle(
                                                    color: (!readCartNotifier.addedItemsName.contains(readNotifier.likedItemsName[index]))
                                                        ? Colors. white : PrimCol.primaryColor,
                                                ))
                                        ),
                                      ),
                                    ]
                                  )
                                ]
                              )
                            ]
                          )
                        );
                      },
                    )
                  ),
                  const SizedBox(height : 15.0),

                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      //border: Border.all(color : )
                    ),
                    margin: const EdgeInsets.symmetric(horizontal: 15.0),

                    clipBehavior : Clip.hardEdge,
                    child: TextButton(
                        onPressed: () {

                          // pressNotifier.added(
                          //     readNotifier.likedItemsName[index],
                          //     readNotifier.likeItemDesc[index],
                          //     readNotifier.likedItemImage[index],
                          //     readNotifier.likedItemRating[index],
                          //     readNotifier.likedItemPricing[index]
                          // );

                        },
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.white, textStyle: const TextStyle(fontSize: 20.0),
                          backgroundColor:  PrimCol.primaryColor ,
                          padding: const EdgeInsets.symmetric(horizontal: 25.0),
                          side: BorderSide(color: PrimCol.primaryColor),

                        ),
                        child: Text('Add All To Cart',
                            style : TextStyle(
                              color:  Colors.white,
                            ))
                    ),
                  ),
                ]
              ),
            )
            // GridView.builder(
            //     shrinkWrap: false,
            //     scrollDirection: Axis.vertical,
            //     itemCount: 4,
            //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //       crossAxisCount: 2,
            //       childAspectRatio: MediaQuery.of(context).size.width /
            //           (MediaQuery.of(context).size.height/1.4 ),
            //     ),
            //     itemBuilder: (BuildContext context, int index) {
            //       return favouriteItem(
            //         context,
            //         HomePageItems.itemImage[index],
            //         HomePageItems.itemName[index],
            //         HomePageItems.itemPrice[index],
            //         HomePageItems.itemRating[index],
            //         HomePageItems.itemDescription[index],
            //         MediaQuery.of(context).size.width,
            //       );
            //     })

        ),
      ),
    );
  }
}
