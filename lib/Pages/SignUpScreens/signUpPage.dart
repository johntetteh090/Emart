

import 'package:country_code_picker/country_code_picker.dart';
import 'package:emart/Pages/LoginScreen/loginPage.dart';
import 'package:emart/Palletes/Colours.dart';
import 'package:emart/components/signUpPageBody.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:cupertino_icons/cupertino_icons.dart';


class SignUpPage extends StatefulWidget {
  const SignUpPage ({super.key});

  @override
  State<SignUpPage > createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage > {
  static const double measurement= 50.0;
  TextEditingController controller =  TextEditingController();
  @override

  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
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

                  const Text('Create your account!',
                    style: TextStyle(fontSize: 30.0,fontStyle: FontStyle.normal,fontWeight: FontWeight.w600),),

                  const SizedBox(height: 30.0,),
                  const Text('Create your account and embark on a journey of discovery.',
                    style: TextStyle(fontSize: 15.0,
                        fontStyle: FontStyle.normal,
                    color: PrimCol.inActiveColor),),

                  const Text('"Join us and be part of a vibrant community.',
                    style: TextStyle(fontSize: 15.0,
                        fontStyle: FontStyle.normal,
                        color: PrimCol.inActiveColor),),


                  const SizedBox(height: 80.0,),

                  //THE LOGIN TEXTBOX AND THE REST
                  const SignUp()


                ],
              ),
            )
        ),
      ),
    );
  }

@override
  void initState() {
    // TODO: implement initState
    super.initState();

    setState(() {

    });
  }
}
