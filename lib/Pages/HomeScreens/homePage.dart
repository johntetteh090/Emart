import 'package:emart/Palletes/Colours.dart';
import 'package:emart/components/bottomNav.dart';
import 'package:emart/components/categoryItem.dart';
import 'package:emart/components/homeHeader.dart';
import 'package:emart/models/homeScreenItems.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  ScrollController _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {

    double bannerHeight = MediaQuery.of(context).size.height/5.7;
    return  Placeholder(
      child: DefaultTabController(
        initialIndex: 0,
        length: 3,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar:  header('Categories',context),
          bottomNavigationBar:  bottomNav(0,context),
          body:  SafeArea(
            child: TabBarView(
              children: [

                //FIRST BAR VIEW
                firstBarView(bannerHeight),

                //SECOND BAR VIEW
                secondBarView(bannerHeight),

                //THIRD BAR VIEW
                Center(
                  child: Text("It's sunny here"),
                ),
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

    _scrollController.addListener(() {
      if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
        // Reached the end of the list, trigger data reload
        setState(() {
          // Update your data source or fetch new data
          HomePageItems.itemName.addAll([
            'Shirt',
            'Short',
            'Bag',
            'Shoe',
            'Necklace',
            'Lip Gloss',
            'Eye Lashes',
          ]);
          HomePageItems.itemImage.addAll([
            'assets/shirtGirl.png',
            'assets/girlShorts.png',
            'assets/girlBag.png',
            'assets/girlShoe.png',
            'assets/girlNecklace.png',
            'assets/girlLipgloss.png',
            'assets/girlPurse.png',
          ]);
          HomePageItems.itemPrice.addAll([
            '425',
            '300',
            '250',
            '175',
            '355',
            '40',
            '85'
          ]);
          HomePageItems.itemRating.addAll([
            2.75,
            3.0,
            4.0,
            2.5,
            3.75,
            2.5,
            4.75,
          ]);
          HomePageItems.itemDescription.addAll([
            'A new shirt -- 35 yards',
            'A new short -- 24 yards',
            'A new Louis vuitton standard',
            'Versace shoe -- Size 35',
            'A new Calvin klien necklace',
            'A new Lip gloss from versace',
            'A new purse from Da vinci'
          ]);
        });
      }
    });


  }

  Widget firstBarView(double bannerHeight) {

    return  CustomScrollView(
      physics: const BouncingScrollPhysics(),
      controller: _scrollController ,
      slivers: [
        SliverToBoxAdapter(
          child:
          //BANNER
                Container(
                  height: bannerHeight,
                  margin: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 15.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: PrimCol.bannerWomenColor,
                  ),
                  child: Row(
                    children: [

                      //THE PROMO TEXT
                      Column(
                        children: [

                          const SizedBox(height: 12.0,),


                          //FIRST TEXT
                          Container(
                              margin: const EdgeInsets.symmetric(horizontal: 15.0),
                              child: Row(
                                children: const [

                                  Text('25%',
                                    style: TextStyle(
                                        fontSize: 40.0,
                                        fontWeight: FontWeight.w700
                                    ),),

                                  SizedBox(width: 12.0,),
                                  Text('promo discount')
                                ],
                              )
                          ),

                          const SizedBox(height: 8.0,),
                          //SECOND TEXT
                          Container(
                            width: MediaQuery.of(context).size.width/2.4,
                              alignment: Alignment.topLeft,
                              margin: const EdgeInsets.symmetric(horizontal: 15.0),
                              child:  const Text('Hurry, this exclusive discount ends soon!',
                              style: TextStyle(
                                fontWeight: FontWeight.w600
                              ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              )
                          ),

                          const SizedBox(height: 8.0,),

                          //THE BUTTON
                          TextButton(
                            onPressed: () {

                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(builder: (context) => const ShoppingCartPage()),
                              // );
                            },
                            style: TextButton.styleFrom(
                                foregroundColor: Colors.white, textStyle: const TextStyle(fontSize: 20.0),
                                backgroundColor: Colors.white),
                            child: const Text('Use discount!',
                            style: TextStyle(
                              color: PrimCol.primaryColor,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w700
                            ),),
                          ),

                        ],
                      ),



                      //THE PROM IMAGE
                      Image.asset('assets/example.png',fit: BoxFit.fitHeight,),
                    ],
                  ),

                ),

        ),

        SliverList(

            delegate: SliverChildBuilderDelegate(

                  (context,index){

                    if (index < HomePageItems.itemImage.length){
                      return categoryItem
                        (
                          context,
                          index,
                          MediaQuery.of(context).size.width
                      );
                    }

                    else if (index == HomePageItems.itemImage.length){
                       return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }

                    return null;
              },
              childCount: HomePageItems.itemImage.length + 1,

            )),

      ],
    );
  }

  Widget secondBarView(double bannerHeight) {

    return  CustomScrollView(
      physics: const BouncingScrollPhysics(),
      controller: _scrollController ,
      slivers: [
        SliverToBoxAdapter(
          child:
          //BANNER
          Container(
            height: bannerHeight,
            margin: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 15.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: PrimCol.bannerMenColor,
            ),
            child: Row(
              children: [

                //THE PROMO TEXT
                Column(
                  children: [

                    const SizedBox(height: 12.0,),


                    //FIRST TEXT
                    Container(
                        margin: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Row(
                          children: const [

                            Text('25%',
                              style: TextStyle(
                                  fontSize: 40.0,
                                  fontWeight: FontWeight.w700
                              ),),

                            SizedBox(width: 12.0,),
                            Text('promo discount')
                          ],
                        )
                    ),

                    const SizedBox(height: 8.0,),
                    //SECOND TEXT
                    Container(
                        width: MediaQuery.of(context).size.width/2.4,
                        alignment: Alignment.topLeft,
                        margin: const EdgeInsets.symmetric(horizontal: 15.0),
                        child:  const Text('Hurry, this exclusive discount ends soon!',
                          style: TextStyle(
                              fontWeight: FontWeight.w600
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        )
                    ),

                    const SizedBox(height: 8.0,),

                    //THE BUTTON
                    TextButton(
                      onPressed: () {

                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => const ShoppingCartPage()),
                        // );
                      },
                      style: TextButton.styleFrom(
                          foregroundColor: Colors.white, textStyle: const TextStyle(fontSize: 20.0),
                          backgroundColor: Colors.white),
                      child: const Text('Use discount!',
                        style: TextStyle(
                            color: PrimCol.primaryColor,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w700
                        ),),
                    ),

                  ],
                ),



                //THE PROM IMAGE
                Image.asset('assets/example.png',fit: BoxFit.fitHeight,),
              ],
            ),

          ),

        ),

        SliverList(

            delegate: SliverChildBuilderDelegate(

                  (context,index){

                if (index < HomePageItems.itemImage.length){
                  return categoryItem
                    (
                      context,
                      index,
                      MediaQuery.of(context).size.width
                  );
                }

                else if (index == HomePageItems.itemImage.length){
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }

                return null;
              },
              childCount: HomePageItems.itemImage.length + 1,

            )),

      ],
    );
  }
}
