import 'package:emart/Pages/HomeScreens/homePage.dart';
import 'package:emart/Pages/LoginScreen/loginPage.dart';
import 'package:emart/Pages/SignUpScreens/verificationPage.dart';
import 'package:emart/Palletes/Colours.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:emart/Pages/splashScreen.dart';
import 'package:flutter/services.dart';
import 'package:emart/Pages/GuidanceScreens/favouriteProductPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: Colors.white, // Color for Android
        statusBarBrightness: Brightness.dark // Dark == white status bar -- for IOS.
    ));
    return MaterialApp(
      //title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        fontFamily: 'Raleway',
          // colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue).copyWith(background: Colors.white),
        primaryColor: PrimCol.primaryColor,
        backgroundColor: Colors.white
      ),
      home:
      //const HomePage()
      //const VerificationPage()
      //const LoginPage()
      //const FavouriteProductPage()
      const SplashScreen()
    );
  }
}


