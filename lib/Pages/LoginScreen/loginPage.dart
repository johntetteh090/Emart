import 'package:emart/Palletes/Colours.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:cupertino_icons/cupertino_icons.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Placeholder(
      child: Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children:  [

                  SizedBox(height: 30.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const[
                      Text('Emart',
                        style: TextStyle(fontSize: 50.0,fontStyle: FontStyle.normal,fontWeight: FontWeight.w500),),
                    ],
                  ),


                  const SizedBox(height: 40.0,),

                  const Text('Welcome back!',
                    style: TextStyle(fontSize: 30.0,fontStyle: FontStyle.normal,fontWeight: FontWeight.w600),),

                  const SizedBox(height: 30.0,),
                  const Text('Step into Your Digital Oasis: Login and Explore!Please log in to your account',
                    style: TextStyle(fontSize: 15.0,
                        fontStyle: FontStyle.normal,
                    color: PrimCol.inActiveColor),),

                  const Text('Please log in to your account',
                    style: TextStyle(fontSize: 15.0,
                        fontStyle: FontStyle.normal,
                        color: PrimCol.inActiveColor),),


                ],
              ),
            )
        ),
      ),
    );
  }
}
