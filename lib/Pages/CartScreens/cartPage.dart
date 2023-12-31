import 'package:emart/components/bottomNav.dart';
import 'package:emart/components/cartItem.dart';
import 'package:emart/models/homeScreenItems.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:provider/provider.dart';
import 'package:emart/Pages/FavouriteScreens/favourite_viewmodel.dart';
import 'package:emart/Palletes/Colours.dart';
import 'package:iconsax/iconsax.dart';
import 'package:get/get.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {

    var pressNotifier = Provider.of<FavouriteModel>(context, listen: false);
    var readNotifier = Provider.of<FavouriteModel>(context);


    return  Placeholder(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,

          title: const Text('Cart',
            style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.w700,
                color: Colors.black
            ),),

          elevation: 0.0,

        ),
        bottomNavigationBar: bottomNav(2,context),
        body: SafeArea(
          child: SingleChildScrollView(
            child : (readNotifier.addedItemsName.length <= 0) ?  Column(
                children:[

                  Container(
                    height: MediaQuery.of(context).size.height / 2,
                    child: Image.asset('assets/biking.png'),
                  ),

                  const SizedBox(height: 15.0),

                  Text('You have no items in cart yet.',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color : Colors.black
                      )),

                  Text('Browse through to own a product',
                      style: TextStyle(
                          fontSize: 20,

                          color : Colors.black
                      ))
                ]
            ) : Column(
                children: [

                  Container(
                    height : MediaQuery.of(context).size.height / 1.4,
                      width : MediaQuery.of(context).size.width,
                      margin : const EdgeInsets.symmetric(horizontal: 15.0),
                      child : ListView.builder(
                        physics: BouncingScrollPhysics(),
                        itemCount: readNotifier.addedItemsName.length,
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

                                      child :  Image.asset('${readNotifier.addedItemImage[index]}'),
                                    ),

                                    const SizedBox(width : 20.0),

                                    Expanded(
                                        child : Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment : CrossAxisAlignment.start,
                                            children:[

                                              Text('${readNotifier.addedItemsName[index]}',
                                                  maxLines: 2,
                                                  style : TextStyle(
                                                      fontSize: 25.0,
                                                      fontWeight: FontWeight.bold
                                                  )),
                                              Text('\$ ${readNotifier.addedItemPricing[index]}',
                                                  style : TextStyle(
                                                    fontSize: 25.0,

                                                  )),
                                              const SizedBox(height: 6.0,),
                                              Text('${readNotifier.addedItemDesc[index]}',
                                                  maxLines: 2,
                                                  style : TextStyle(
                                                      fontSize: 15.0,
                                                      //fontWeight: FontWeight.bold
                                                  )),

                                              const SizedBox(height: 12.0,),

                                               getQuantity(readNotifier : readNotifier,
                                                 pressNotifier : pressNotifier,
                                                 index : index ,),

                                              const SizedBox(height: 12.0,),
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
                    height : 240.0,
                    decoration : BoxDecoration(
                      borderRadius: const BorderRadius.only(topLeft: Radius.circular(55.0),
                          topRight: Radius.circular(55.0)),
                      
                      color: PrimCol.primaryColor.withOpacity(.2)
                    ),
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 35.0),
                      child : Column(
                        children: [

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Order',
                              style: TextStyle(
                                fontSize : 18
                              )),


                              Text('\$ ${readNotifier.total}',
                                  style: TextStyle(
                                      fontSize : 18,
                                    fontWeight : FontWeight.bold
                                  ))
                            ],
                          ),
                          const SizedBox(height : 15.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Delivery',
                                  style: TextStyle(
                                      fontSize : 18
                                  )),


                              Text('60.56',
                                  style: TextStyle(
                                      fontSize : 18,
                                      fontWeight : FontWeight.bold
                                  ))
                            ],
                          ),
                          const SizedBox(height : 15.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Summary',
                                  style: TextStyle(
                                      fontSize : 18
                                  )),


                              Text('\$ ${readNotifier.total + 60.56}',
                                  style: TextStyle(
                                      fontSize : 18,
                                      fontWeight : FontWeight.bold
                                  ))
                            ],
                          ),
                          const SizedBox(height : 10.0),
                          const Divider(height : 8.0,thickness: 2.0,),

                          const SizedBox(height : 10.0),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 50.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              //border: Border.all(color : )
                            ),
                            margin: const EdgeInsets.symmetric(horizontal: 10.0),

                            clipBehavior : Clip.hardEdge,
                            child: TextButton(
                                onPressed: () async{



                                },
                                style: TextButton.styleFrom(
                                  foregroundColor: Colors.white, textStyle: const TextStyle(fontSize: 20.0),
                                  backgroundColor:  PrimCol.primaryColor ,
                                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                                  side: BorderSide(color: PrimCol.primaryColor),

                                ),
                                child: Text('Checkout',
                                    style : TextStyle(
                                      color:  Colors.white,
                                    ))
                            ),
                          ),

                        ],
                      )
                    ),
                  )


                ]
            ),
          )


        ),
      ),
    );
  }
}


class getQuantity extends StatefulWidget {

  var readNotifier;
  var pressNotifier;
  int index;
   getQuantity({super.key, required this.readNotifier,required this.pressNotifier,required this.index});

  @override
  State<getQuantity> createState() => _getQuantityState();
}

class _getQuantityState extends State<getQuantity> {

  int quantity = 1;
  @override
  Widget build(BuildContext context) {

    return Row(
        children:[

          GestureDetector(
              onTap: (){

                //Navigator.pop(context);
                if(quantity > 1){
                  setState(() {
                    quantity--;
                  });
                }
              },
              child: Container(
                padding : const EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.0),
                  border : Border.all( color : PrimCol.primaryColor,),
                  //color: PrimCol.primaryColor
                ),
                child: const Icon(Iconsax.minus,size: 20.0,),
              )
          ),

          const SizedBox(width: 7.0),

          Text('$quantity',
              style: TextStyle(
                  fontSize: 18.0
              )
          ),

          const SizedBox(width: 7.0),

          GestureDetector(
              onTap: (){

                setState(() {
                  quantity++;
                });

                //Navigator.pop(context);
              },
              child: Container(
                padding : const EdgeInsets.all(5.0),
                margin: const EdgeInsets.only(right: 15.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.0),
                  border : Border.all( color : PrimCol.primaryColor,),
                  color : PrimCol.primaryColor,
                  //color: PrimCol.primaryColor
                ),
                child: const Icon(Iconsax.add,size: 20.0, color: Colors.white),
              )
          ),

          const SizedBox(width: 19.0),

          GestureDetector(
              onTap:(){

                widget.pressNotifier.removed(
                    widget.readNotifier.addedItemsName[widget.index],
                    widget.readNotifier.addedItemDesc[widget.index],
                    widget.readNotifier.addedItemImage[widget.index],
                    widget.readNotifier.addedItemRating[widget.index],
                    widget.readNotifier.addedItemPricing[widget.index]
                );
              },
              child : Text('Remove',
                  style : TextStyle(
                      color : Color(0xffd9d9d9),
                      fontSize: 18.0
                  ))
          ),
        ]
    );

  }
}

