import 'package:emart/Palletes/Colours.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:emart/Pages/SignUpScreens/signUpPage.dart';



Widget textfields_and_Buttons(double height , double screenWidth,BuildContext context){

const double measurement= 50.0;
  return Column(
    children: [

      //THE ENTER YOUR  MAIL SECTION
      Container(
        width: screenWidth,
        height: measurement,
        margin: const EdgeInsets.symmetric(horizontal: 40.0),
        child: Row(
          children: [
            // Container(
            //   height: measurement,
            //   width: measurement,
            //   padding: const EdgeInsets.all(4.0),
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(5.0),
            //     border: Border.all(color: PrimCol.inActiveColor)
            //   ),
            //   child: const Icon(CupertinoIcons.person,color: PrimCol.inActiveColor,)
            // ),

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

      const SizedBox(height: measurement-20,),

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

      const SizedBox(height: measurement-20,),

      //THE LOGIN BUTTON
      Container(
        width: screenWidth,
        height: 50.0,
        margin: const EdgeInsets.symmetric(horizontal: 40.0),
        child: TextButton(
          onPressed: () {

            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => const LoginPage()),
            // );
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
  );
}