
import 'package:emart/Palletes/Colours.dart';
import 'package:flutter/material.dart';
import 'package:emart/Palletes/Colours.dart';
import 'package:flutter/cupertino.dart';
import 'package:emart/Pages/GuidanceScreens/ShoppingCartPage.dart';


class FavouriteProductPage extends StatefulWidget {
  const FavouriteProductPage({super.key});

  @override
  State<FavouriteProductPage> createState() => _FavouriteProductPageState();
}

class _FavouriteProductPageState extends State<FavouriteProductPage> {
  @override

  Widget build(BuildContext context) {

    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return  Placeholder(
      child: Scaffold(
       body:  SafeArea(
         child: Column(
           children: [
             SizedBox(
               width:double.infinity,
               height: MediaQuery.of(context).size.height/2.3,
               child: Image.asset('assets/dresses.jpg',fit: BoxFit.fill,),
             ),

            const SizedBox(height: 25.0,),
             const SizedBox(
               child: Text('Search Your',
               style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.w500),),
             ),
             const SizedBox(
               child: Text('Favourite Product',
                 style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.w500),),
             ),

             const SizedBox(height: 30.0,),

             const SizedBox(
               child: Text('We take pride in delivering products of the highest caliber.',
                 style: TextStyle(fontSize: 15.0,
                     color: Colors.grey,
                     fontWeight: FontWeight.w500),),
             ),

             const SizedBox(
               child: Text('Say goodbye to flimsy and hello to durability!',
                 style: TextStyle(fontSize: 15.0,
                     color: Colors.grey,
                     fontWeight: FontWeight.w500),),
             ),


             const SizedBox(height:80.0),


             //THE ROUND BOX
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [


                 Container(
                   height: 8.0,
                   width: width/4.5,
                   decoration: const BoxDecoration(
                       color: PrimCol.primaryColor,
                       borderRadius:BorderRadius.all(Radius.circular(10.0))
                   ),
                 ),

                 const SizedBox(width: 12.0,),
                 Container(
                   height: 8.0,
                   width: width/12,
                   decoration: const BoxDecoration(
                       color: PrimCol.inActiveColor,
                       borderRadius:BorderRadius.all(Radius.circular(10.0))
                   ),
                 ),

                 const SizedBox(width: 12.0,),
                 Container(
                   height: 8.0,
                   width: width/12,
                   decoration: const BoxDecoration(
                       color: PrimCol.inActiveColor,
                       borderRadius:BorderRadius.all(Radius.circular(10.0))
                   ),
                 ),


               ],
             ),
             const SizedBox(height:80.0),


             //THE SKIP BUTTON
             Container(
               width: width,
               height: 50.0,
               margin: const EdgeInsets.symmetric(horizontal: 40.0),
               child: TextButton(
                 onPressed: () {

                   Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => const ShoppingCartPage()),
                   );
                 },
                 style: TextButton.styleFrom(
                     foregroundColor: Colors.white, textStyle: const TextStyle(fontSize: 20.0),
                     backgroundColor: PrimCol.primaryColor),
                 child: const Text('Skip'),
               ),
             ),

           ],
         ),
       ),
      ),
    );
  }
}
