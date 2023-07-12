import 'package:emart/Pages/LoginScreen/loginPage.dart';
import 'package:emart/components/bottomNav.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return  Placeholder(

      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,

          title: const Text('Profile',
            style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.w700,
                color: Colors.black
            ),),

          elevation: 0.0,

        ),
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Container(
            child: Column(
              children: [

                const SizedBox(height: 20.0,),
                Container(
                  width: MediaQuery.of(context).size.width/1.5,
                  height: MediaQuery.of(context).size.height/3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100.0),

                  ),
                  child: Image.asset('assets/avatar.png',
                  )
                ),

                const SizedBox(height: 20.0,),
                Container(
                  child: const Text('Samuel Smith',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold
                  ),),
                ),
                Container(
                  child: const Text('0248751463',
                    style: TextStyle(
                        fontSize: 18.0,

                    ),),
                ),

                Container(
                  child: const Text('\$ 240 amount of purchases',
                    style: TextStyle(
                        fontSize: 25.0,

                    ),),
                ),

                Expanded(
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.logout,color: Colors.redAccent,),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const LoginPage()),
                              );
                            },
                            child: const Text('Log Out',
                            style: TextStyle(
                              color: Colors.redAccent,
                            ),),
                          )
                        ],
                      ),
                    )
                )

              ],
            ),
          ),
        ),
        bottomNavigationBar:  bottomNav(3,context),
      ),
    );
  }
}
