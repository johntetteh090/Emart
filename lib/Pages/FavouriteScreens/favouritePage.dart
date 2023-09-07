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
import 'package:iconsax/iconsax.dart';
import 'package:get/get.dart';

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

          actions: [
            Stack(
              children: [

                Container(
                  padding : const EdgeInsets.all(9.0),
                  margin : const EdgeInsets.only(right : 15.0),

                  child: const Icon(Iconsax.shopping_cart,size: 25.0,color : Colors.black),
                ),

                Align(
                    alignment: Alignment.topRight,
                    child: Container(
                        padding: const EdgeInsets.all(4.0),
                        margin: const EdgeInsets.only(left: 28.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0),
                          color: Colors.redAccent,
                        ),
                        child: Text('${readCartNotifier.addedItemsName.length}',
                            style: TextStyle(
                                color: Colors.white
                            ))
                    )
                )
              ],
            )
          ],

          elevation: 0.0,

        ),
        bottomNavigationBar: bottomNav(1,context),
        body: SafeArea(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height : MediaQuery.of(context).size.height,
              margin: const EdgeInsets.symmetric(horizontal: 25.0,vertical: 10.0),
              child: (readNotifier.likedItemsName.length <= 0) ?  Column(
                children:[

                  Container(
                    height: MediaQuery.of(context).size.height / 2,
                    child: Image.asset('assets/biking.png'),
                  ),

                  const SizedBox(height: 15.0),

                  Text('You have no favourites yet.',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color : Colors.black
                      )),

                  Text('Browse through to choose your favourites',
                      style: TextStyle(
                          fontSize: 20,

                          color : Colors.black
                      ))
                ]
              ) : Column(
                children: [

                  Expanded(
                    child : ListView.builder(
                      itemCount: readNotifier.likedItemsName.length,
                      itemBuilder: (BuildContext context, int index)
                      {

                          return Container(
                              margin : const EdgeInsets.only(top: 15, bottom : 10),
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

                                    Expanded(
                                        child : Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment : CrossAxisAlignment.start,
                                            children:[

                                              Text('${readNotifier.likedItemsName[index]}',
                                                  maxLines: 2,
                                                  style : const TextStyle(
                                                      fontSize: 25.0,
                                                      fontWeight: FontWeight.bold
                                                  )),
                                              Text('\$ ${readNotifier.likedItemPricing[index]}',
                                                  style : TextStyle(
                                                    fontSize: 25.0,

                                                  )),

                                              const SizedBox(height: 6.0,),
                                              Text('${readNotifier.likeItemDesc[index]}',
                                                  maxLines: 2,
                                                  style : TextStyle(
                                                    fontSize: 15.0,
                                                    //fontWeight: FontWeight.bold
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
                        onPressed: () async{

                          for(int i=0; i < readNotifier.likedItemsName.length; i++){
                            await pressNotifier.added(
                                readNotifier.likedItemsName[i],
                                readNotifier.likeItemDesc[i],
                                readNotifier.likedItemImage[i],
                                readNotifier.likedItemRating[i],
                                readNotifier.likedItemPricing[i]
                            );
                          }

                          openSnack(readNotifier.likedItemsName.length);


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


        ),
      ),
    );
  }

  void openSnack(var total){

    Get.snackbar(
      'Cart Info',
      '',
      titleText: Text('cart Info',
          style: TextStyle(
              color : Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold
          )),
      messageText:  Row(
          children:[

            const Icon(Iconsax.tick_circle, color: Colors.white),

            const SizedBox(width: 25.0),

            Text('$total items added to Cart',
                style : TextStyle(
                    color : Colors.white
                ))


          ]
      ),
      backgroundColor : PrimCol.primaryColor,
      borderRadius : 10.0,
      margin : const EdgeInsets.symmetric(horizontal : 15.0,vertical: 10.0),


    );


  }
}
