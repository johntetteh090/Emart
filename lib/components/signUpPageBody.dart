import 'package:country_code_picker/country_code_picker.dart';
import 'package:emart/Pages/LoginScreen/loginPage.dart';
import 'package:emart/Pages/SignUpScreens/verificationPage.dart';
import 'package:emart/Palletes/Colours.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:emart/Pages/SignUpScreens/signUpPage.dart';


class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return textfields_and_Buttons(height, screenWidth, context);
  }

  Widget textfields_and_Buttons(double height , double screenWidth,BuildContext context,){

    const double measurement= 50.0;
    TextEditingController controller =  TextEditingController();
    return Column(
      children: [

        //THE ENTER YOUR  NUMBER SECTION
        Container(
          width: screenWidth,
          height: measurement,
          margin: const EdgeInsets.symmetric(horizontal: 40.0),
          child: Row(
            children: [
              const CountryCodePicker(
                onChanged: print,
                // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                initialSelection: 'GH',
                favorite: ['+39','FR'],
                // optional. Shows only country name and flag
                showCountryOnly: true,
                // optional. Shows only country name and flag when popup is closed.
                showOnlyCountryWhenClosed: false,
                // optional. aligns the flag and the Text left
                alignLeft: false,
              ),

              const SizedBox(width: measurement-30,),
              Expanded(
                child: TextField(
                  controller: controller,
                  onChanged: (value){

                  },
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(
                    //prefixIcon:  Icon(CupertinoIcons.lock,color: PrimCol.inActiveColor,),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: PrimCol.inActiveColor), // Set the border color
                    ),

                    hintText: 'Enter Your Phone Number',

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

              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const VerificationPage()),
              );
            },
            style: TextButton.styleFrom(
                foregroundColor: Colors.white, textStyle: const TextStyle(fontSize: 20.0),
                backgroundColor: PrimCol.primaryColor,
                side: const BorderSide(color: PrimCol.primaryColor)
            ),
            child: Text('sign up'.toUpperCase(),
              style: const TextStyle(
                  color: Colors.white
              ),),
          ),
        ),



        const SizedBox(height: 50.0,),

        Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.symmetric(horizontal: 40.0),
          child: const Text('Or Sign up with',
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
            const Text('Already have an account?',
              style: TextStyle(color: PrimCol.inActiveColor,fontSize: 16.0),),


            GestureDetector(
              onTap: (){

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginPage()),
                );
              },
              child:  const Text('Sign in',
                style: TextStyle(color: PrimCol.primaryColor,fontSize: 16.0,fontWeight: FontWeight.w700),),
            )
          ],
        )




      ],
    );
  }
}

