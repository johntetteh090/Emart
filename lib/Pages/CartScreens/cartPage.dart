import 'package:emart/components/bottomNav.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return  Placeholder(
      child: Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: bottomNav(2,context),
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
                    const Text('Cart',
                      style: TextStyle(
                          fontSize: 35.0,
                          fontWeight: FontWeight.w700
                      ),),

                    Container()
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
