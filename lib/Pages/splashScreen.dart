import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:emart/Pages/GuidanceScreens/FavouriteProductPage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return  Placeholder(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [

              Icon(
                CupertinoIcons.shopping_cart,
              size: 50.0,),
              SizedBox(width: 10.0,),
              Text('Emart',
                style: TextStyle(fontSize: 70.0,fontStyle: FontStyle.normal,fontWeight: FontWeight.w600),),
            ],
          )
        ),
      ),
    );

  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Future.delayed(const Duration(milliseconds: 2000), () {
      // Do something

      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const FavouriteProductPage()),
      );
    });
  }
}
