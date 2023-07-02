import 'package:emart/Palletes/Colours.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class UserItemChoosePage extends StatefulWidget {
  final String image;
  final String name;
  final String  price ;
  final String description;
  final double rating;
    UserItemChoosePage({super.key,
    required this.image,
    required this.name,
    required this.price,
    required this.description,
    required this.rating
  });

  @override
  State<UserItemChoosePage> createState() => _UserItemChoosePageState(
      this.image,
      this.name,
      this.price,
      this.description,
      this.rating
  );


}

class _UserItemChoosePageState extends State<UserItemChoosePage> {

  late final String image;
  late final String name;
  late final String  price ;
  late final String description;
  late final double rating ;

  bool XL = false;
  bool L = false;
  bool s = false;
  bool visible= false;

  _UserItemChoosePageState(this.image, this.name, this.price, this.description,this.rating);

  @override
  Widget build(BuildContext context) {
    return  Placeholder(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [

                const SizedBox(height: 15.0,),

                //THE APP BAR
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  [

                    //THE BACK BUTTON
                   GestureDetector(
                     onTap: (){

                       Navigator.pop(context);
                     },
                     child: const Icon(Icons.keyboard_backspace,size: 30.0,),
                   ),

                    //THE HEADER
                    const Text('Product Details',
                    style: TextStyle(
                      fontSize: 35.0,
                      fontWeight: FontWeight.w700
                    ),),

                    Container()
                  ],
                ),

                //THE PRODUCT IMAGE
                Container(
                  height: MediaQuery.of(context).size.height/3,
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 40.0,vertical: 15.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: PrimCol.itemColor
                  ),
                  child: Image.asset(image),
                ),


                const SizedBox(height: 10.0,),

                //THE NAME AND PRICE
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Container(
                      width: 120.0,
                      margin: const EdgeInsets.only(left: 15.0),
                      child: Text(name,
                      style: const TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.w900,
                      ),
                      maxLines: 2,
                      ),
                    ),


                    Container(
                      width: 80.0,
                      //height: 120.0,
                      margin: const EdgeInsets.only(right: 5.0),
                      child: Text('\$ $price',
                        style: const TextStyle(
                          fontSize: 25.0,

                        ),),
                    ),


                  ],
                ),

                const SizedBox(height: 20.0,),

                //THE DESCRIPTION
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.only(left: 15.0,right: 5.0),
                  child: Text(description,
                  style: const TextStyle(
                    color: PrimCol.inActiveColor,
                    fontSize: 20.0
                  ),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,),
                ),
                const SizedBox(height: 10.0,),

                //THE RATINGS
                Container(
                  alignment: Alignment.topLeft,
                  margin: const EdgeInsets.only(left: 15.0),
                  child: RatingBarIndicator(
                    rating: rating,
                    itemBuilder: (context, index) => const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    itemCount: 5,
                    itemSize: 12.0,
                    direction: Axis.horizontal,
                  ),
                ),

                const SizedBox(height: 25.0,),

                //SELECT SIZE
                const Text('Select Size',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600
                ),),

                const SizedBox(height: 15.0,),

                //THE SELECT SIZE BUTTONS
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    //SMALL BUTTON
                    Container(
                      margin: const EdgeInsets.only(left: 15.0),
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            s=true;
                            L = false;
                            XL = false;
                          });
                        },
                        style: TextButton.styleFrom(
                            foregroundColor: Colors.white, textStyle: const TextStyle(fontSize: 20.0),
                            backgroundColor: (s==true)? PrimCol.primaryColor : Colors.white,
                          side: const BorderSide(color: PrimCol.primaryColor,),
                          padding: const EdgeInsets.symmetric(horizontal: 40.0,vertical: 15.0)
                        ),
                        child:  Text('S',
                          style: TextStyle(
                              color: (s==true)? Colors.white : PrimCol.primaryColor,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w700
                          ),),
                      ),
                    ),

                    //LARGE BUTTON
                    TextButton(
                      onPressed: () {
                        setState(() {
                          s=false;
                          L = true;
                          XL = false;
                        });
                      },
                      style: TextButton.styleFrom(
                          foregroundColor: Colors.white, textStyle: const TextStyle(fontSize: 20.0),
                          backgroundColor: (L==true)? PrimCol.primaryColor : Colors.white,
                          side: const BorderSide(color: PrimCol.primaryColor,),
                          padding: const EdgeInsets.symmetric(horizontal: 40.0,vertical: 15.0)
                      ),
                      child:  Text('L',
                        style: TextStyle(
                            color: (L==true)? Colors.white : PrimCol.primaryColor,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w700
                        ),),
                    ),

                    //xtra large container
                    Container(
                      margin: const EdgeInsets.only(right: 15.0),
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            s=false;
                            L = false;
                            XL = true;
                          });
                        },
                        style: TextButton.styleFrom(
                            foregroundColor: Colors.white, textStyle: const TextStyle(fontSize: 20.0),
                            backgroundColor: (XL==true)? PrimCol.primaryColor : Colors.white,
                            side: const BorderSide(color: PrimCol.primaryColor,),
                            padding: const EdgeInsets.symmetric(horizontal: 40.0,vertical: 15.0)
                        ),
                        child:  Text('XL',
                          style: TextStyle(
                              color: (XL==true)? Colors.white : PrimCol.primaryColor,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w700
                          ),),
                      ),
                    )
                  ],
                ),

                const SizedBox(height: 70.0,),


                //ADD TO CART BUTTON
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50.0,
                  margin: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: TextButton(
                    onPressed: () {

                      setState(() {
                        visible = true;
                      });
                    },
                    style: TextButton.styleFrom(
                        foregroundColor: Colors.white, textStyle: const TextStyle(fontSize: 20.0),
                        backgroundColor: PrimCol.primaryColor),
                    child:  Text('Add to Cart'.toUpperCase(),
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w700
                      ),),
                  ),
                ),

                const SizedBox(height: 30.0,),

                Visibility(
                  visible: visible,
                    child: const Text('1 item added to cart',
                    style: TextStyle(
                      color: PrimCol.inActiveColor,
                      fontSize: 18.0
                    ),)
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
