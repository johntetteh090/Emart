import 'package:emart/Pages/CartScreens/cartPage.dart';
import 'package:emart/Pages/FavouriteScreens/favouritePage.dart';
import 'package:emart/Pages/LoginScreen/loginPage.dart';
import 'package:emart/components/bottomNav.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:iconsax/iconsax.dart';
import 'package:get/get.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  var icon = Icons.arrow_forward_ios;
  @override
  Widget build(BuildContext context) {
    return  Placeholder(

      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,

          title: const Text('Profile',
            style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.w700,
                color: Colors.black
            ),),

          elevation: 0.0,

        ),
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            margin : const EdgeInsets.symmetric(horizontal: 10.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  const SizedBox(height: 20.0,),

                  Row(
                    children:[

                      Container(
                          width: 60.0,
                          height: 60.0,
                          margin : const EdgeInsets.only(left: 10.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100.0),

                          ),
                          child: Image.asset('assets/avatar.png',
                          )
                      ),

                      const SizedBox(width : 10.0),

                      Column(
                        children:[
                          Container(
                            child: const Text('Samuel Smith',
                              style: TextStyle(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold
                              ),),
                          ),
                          Container(
                            child: const Text('0248751463',
                              style: TextStyle(
                                fontSize: 18.0,

                              ),),
                          ),
                        ]
                      ),

                     const Spacer(),

                      Container(
                        margin : const EdgeInsets.only(right : 12.0),
                        child: const Text('\$ 2400',
                          style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold
                          ),),
                      ),
                    ]
                  ),


                  const SizedBox(height: 20.0,),

                  Card(
                    shape : RoundedRectangleBorder(
                      borderRadius : BorderRadius.circular(10.0)
                    ),
                    child: GestureDetector(
                      onTap: (){

                      },
                      child : Container(
                        height: 70.0,
                        padding: const EdgeInsets.all(15),
                        child: Row(
                          children: [

                            //MY ORDERS
                            Icon(Iconsax.shopping_bag),

                            const SizedBox(width : 20.0),

                            Text('My Orders',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                                fontSize: 20.0
                            )),

                            const Spacer(),

                            Container(
                              margin : const EdgeInsets.only(right : 9.0),
                              child : Icon(icon)
                            )
                            //FAVOURITES
                            //CARTS
                            //LOG OUT
                          ],
                        ),
                      ),
                    )
                  ),

                  Card(
                      shape : RoundedRectangleBorder(
                          borderRadius : BorderRadius.circular(10.0)
                      ),
                      child: GestureDetector(
                        onTap: (){

                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const FavouritePage()),
                          );

                        },
                        child : Container(
                          height: 70.0,
                          padding: const EdgeInsets.all(15),
                          child: Row(
                            children: [

                              //MY ORDERS
                              Icon(Iconsax.heart),

                              const SizedBox(width : 20.0),

                              Text('My Favourites',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0
                                  )),

                              const Spacer(),

                              Container(
                                  margin : const EdgeInsets.only(right : 9.0),
                                  child : Icon(icon)
                              )
                              //FAVOURITES
                              //CARTS
                              //LOG OUT
                            ],
                          ),
                        ),
                      )
                  ),

                  Card(
                      shape : RoundedRectangleBorder(
                          borderRadius : BorderRadius.circular(10.0)
                      ),
                      child: GestureDetector(
                        onTap: (){

                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const CartPage()),
                          );
                        },
                        child : Container(
                          height: 70.0,
                          padding: const EdgeInsets.all(15),
                          child: Row(
                            children: [

                              //MY ORDERS
                              Icon(Iconsax.shopping_cart),

                              const SizedBox(width : 20.0),

                              Text('Cart',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    fontSize: 20.0
                                  )),

                              const Spacer(),

                              Container(
                                  margin : const EdgeInsets.only(right : 9.0),
                                  child : Icon(icon)
                              )
                              //FAVOURITES
                              //CARTS
                              //LOG OUT
                            ],
                          ),
                        ),
                      )
                  ),

                  const SizedBox(height : 15.0),
                  Text('Account Settings',
                  style : TextStyle(
                    color : Colors.grey[300],
                    fontSize: 16.0
                  )),

                  const SizedBox(height : 10.0),
                  Card(
                      shape : RoundedRectangleBorder(
                          borderRadius : BorderRadius.circular(10.0)
                      ),
                      child: GestureDetector(
                        onTap: (){

                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const  LoginPage()),
                          );

                        },
                        child : Container(
                          height: 70.0,
                          padding: const EdgeInsets.all(15),
                          child: Row(
                            children: [

                              //MY ORDERS
                              Icon(Iconsax.logout, color : Colors.redAccent),

                              const SizedBox(width : 20.0),

                              Text('Log Out',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0,
                                    color : Colors.redAccent
                                  )),

                              const Spacer(),


                              //FAVOURITES
                              //CARTS
                              //LOG OUT
                            ],
                          ),
                        ),
                      )
                  ),





                ],
              ),
            )
          ),
        ),
        bottomNavigationBar:  bottomNav(3,context),
      ),
    );
  }
}
