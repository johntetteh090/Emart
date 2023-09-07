import 'package:emart/Pages/HomeScreens/homePage.dart';
import 'package:emart/Pages/SignUpScreens/signUpPage.dart';
import 'package:emart/Palletes/Colours.dart';
import 'package:emart/components/loginPageBody.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:cupertino_icons/cupertino_icons.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  double measurement= 50.0;
  @override
  Widget build(BuildContext context) {

    var screenWidth = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Placeholder(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children:  [

                  const SizedBox(height: 30.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const[
                      Text('Emart',
                        style: TextStyle(fontSize: 50.0,fontStyle: FontStyle.normal,fontWeight: FontWeight.w500),),
                    ],
                  ),


                  const SizedBox(height: 40.0,),

                  const Text('Welcome back!',
                    style: TextStyle(fontSize: 40.0,fontStyle: FontStyle.normal,fontWeight: FontWeight.w600),),

                  const SizedBox(height: 30.0,),
                  const Text('Step into Your Digital Oasis: Login and Explore!',
                    style: TextStyle(fontSize: 15.0,
                        fontStyle: FontStyle.normal,
                    color: PrimCol.inActiveColor),),

                  const Text('Please log in to your account',
                    style: TextStyle(fontSize: 15.0,
                        fontStyle: FontStyle.normal,
                        color: PrimCol.inActiveColor),),


                  const SizedBox(height: 80.0,),

                  //THE LOGIN TEXTBOX AND THE REST
                  // textfields_and_Buttons(
                  //   MediaQuery.of(context).size.height,
                  //   MediaQuery.of(context).size.width,
                  //   context
                  // ),

                  Column(
                    children: [

                      //THE ENTER YOUR  MAIL SECTION
                      Container(
                        width: screenWidth,
                        height: measurement,
                        margin: const EdgeInsets.symmetric(horizontal: 40.0),
                        child: Row(
                          children: [


                            Expanded(
                              child: TextField(
                                controller: TextEditingController(),
                                decoration: const InputDecoration(
                                  prefixIcon:  Icon(CupertinoIcons.person,color: PrimCol.inActiveColor,),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: PrimCol.inActiveColor), // Set the border color
                                  ),

                                  hintText: 'Enter your Email',

                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                       SizedBox(height: measurement-20,),

                      //ENTER YOUR PASSWORD SECTION
                      Container(
                        width: screenWidth,
                        height: measurement,
                        margin: const EdgeInsets.symmetric(horizontal: 40.0),
                        child: Row(
                          children: [

                            Expanded(
                              child: TextField(
                                controller: TextEditingController(),
                                decoration: const InputDecoration(
                                  prefixIcon:  Icon(CupertinoIcons.lock,color: PrimCol.inActiveColor,),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: PrimCol.inActiveColor), // Set the border color
                                  ),

                                  hintText: 'Enter your Password',

                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                       SizedBox(height: measurement-20,),

                      //THE LOGIN BUTTON
                      Container(
                        width: screenWidth,
                        height: 50.0,
                        margin: const EdgeInsets.symmetric(horizontal: 40.0),
                        child: TextButton(
                          onPressed: () {


                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const HomePage()),
                            );

                          },
                          style: TextButton.styleFrom(
                              foregroundColor: Colors.white, textStyle: const TextStyle(fontSize: 20.0),
                              backgroundColor: PrimCol.primaryColor,
                              side: const BorderSide(color: PrimCol.primaryColor)
                          ),
                          child: Text('sign in'.toUpperCase(),
                            style: const TextStyle(
                                color: Colors.white
                            ),),
                        ),
                      ),

                      const SizedBox(height: 20.0,),


                      //FORGOT PASSWORD TEXT
                      GestureDetector(
                        onTap: (){

                        },
                        child: Container(
                          alignment: Alignment.topRight,
                          margin: const EdgeInsets.symmetric(horizontal: 40.0),
                          child: const Text('Forgot password?',
                            style: TextStyle(color: PrimCol.primaryColor,fontSize: 18.0),),
                        ),
                      ),

                      const SizedBox(height: 50.0,),

                      Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.symmetric(horizontal: 40.0),
                        child: const Text('Or Login with',
                          style: TextStyle(color: PrimCol.inActiveColor,fontSize: 18.0),),
                      ),

                      const SizedBox(height: 30.0,),


                      //THE OTHER SIGN IN ICONS OPTIONS
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: (){

                            },
                            child: SizedBox(
                              width: 40.0,
                              height: 30.0,
                              child: Image.asset('assets/google.png',fit: BoxFit.contain,),
                            ),
                          ),
                          const SizedBox(width: 10.0,),

                          GestureDetector(
                            onTap: (){

                            },
                            child: SizedBox(
                              width: 40.0,
                              height: 30.0,
                              child: Image.asset('assets/twitter.png',fit: BoxFit.contain,),
                            ),
                          ),

                          const SizedBox(width: 15.0,),
                          const Text('f',
                            style: TextStyle(
                                fontSize: 40.0,
                                color: Colors.blue,
                                fontWeight: FontWeight.w900
                            ),)
                        ],
                      ),


                      const SizedBox(height: 50.0,),

                      //THE SIGN UP TEXT
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:  [
                          const Text('Did not have an account?',
                            style: TextStyle(color: PrimCol.inActiveColor,fontSize: 16.0),),


                          const SizedBox(width : 5.0),
                          GestureDetector(
                            onTap: (){

                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const SignUpPage()),
                              );
                            },
                            child:  const Text('Sign up',
                              style: TextStyle(color: PrimCol.primaryColor,fontSize: 16.0,fontWeight: FontWeight.w700),),
                          )
                        ],
                      )




                    ],
                  )


                ],
              ),
            )
        ),
      ),
    );
  }
}
