import 'package:emart/components/homeHeader.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Placeholder(
      child: DefaultTabController(
        initialIndex: 1,
        length: 3,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar:  header('Categories',context),
          body: SafeArea(
            child: Column(
              children: [
                const SizedBox(height: 15.0,),
                //header('Categories'),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }
}
