import 'package:emart/Pages/HomeScreens/homePage.dart';
import 'package:emart/Palletes/Colours.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class VerificationPage extends StatefulWidget {
  const VerificationPage({super.key});

  @override
  State<VerificationPage> createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {

  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Placeholder(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(

          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [

                const SizedBox(height: 8.0,),
                //THE HEADER
                Row(
                  children: [
                    const SizedBox(width: 10.0,),
                    GestureDetector(
                      onTap: (){

                      },
                      child: const Icon(CupertinoIcons.back,size: 40.0,),
                    ),


                  ],
                ),

                const SizedBox(height: 80.0,),
                const Text('OTP Verification',
                  style: TextStyle(fontSize: 40.0,fontStyle: FontStyle.normal,fontWeight: FontWeight.w600),),

                const SizedBox(height: 20.0,),
                const Text('Verify and Embrace the Future with OTP',
                  style: TextStyle(fontSize: 15.0,
                      fontStyle: FontStyle.normal,
                      color: PrimCol.inActiveColor),),

                const Text('Unlock the Magic with Your OTP',
                  style: TextStyle(fontSize: 15.0,
                      fontStyle: FontStyle.normal,
                      color: PrimCol.inActiveColor),),

                const SizedBox(height: 80.0,),
                Container(
                  height: 50.0,
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 40.0),
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
                      border: OutlineInputBorder(
                        borderSide:  BorderSide(color: PrimCol.inActiveColor),
                      ),
                      hintText: 'OTP Code here'

                    ),

                  ),
                ),


                const SizedBox(height: 100.0,),


                //THE BUTTON
                Container(
                  width: MediaQuery.of(context).size.width,
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
                    child: Text('continue'.toUpperCase(),
                      style: const TextStyle(
                          color: Colors.white
                      ),),
                  ),
                ),


                const SizedBox(height: 100.0,),

                const Text('Did not receive the code?',
                  style: TextStyle(fontSize: 15.0,
                      fontStyle: FontStyle.normal,
                      color: PrimCol.inActiveColor),),

                const SizedBox(height: 10.0,),
                GestureDetector(
                  onTap: (){

                  },
                  child: const Text('Resend OTP Code',
                    style: TextStyle(fontSize: 25.0,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w800,
                        color: PrimCol.primaryColor,
                        decoration: TextDecoration.underline),),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
