import 'package:emart/Palletes/Colours.dart';
import 'package:emart/components/bottomNav.dart';
import 'package:emart/components/categoryItem.dart';
import 'package:emart/components/homeHeader.dart';
import 'package:emart/models/homeScreenItems.dart';
import 'package:emart/models/homeScreenItemsKid.dart';
import 'package:emart/models/homeScreenItemsMen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:iconsax/iconsax.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  ScrollController _scrollController = ScrollController();
  ScrollController _scrollControllerMen = ScrollController();
  ScrollController _scrollControllerKid = ScrollController();

  bool low = false;
  bool AZ = false;
  bool ZA = false;
  bool Dis = false;

  @override
  Widget build(BuildContext context) {

    double bannerHeight = MediaQuery.of(context).size.height/5.7;
    double width = MediaQuery.of(context).size.width/2;
    return  Placeholder(
      child: DefaultTabController(
        initialIndex: 0,
        length: 3,
        child: Scaffold(
          backgroundColor: Colors.white,
          //appBar:  header('Categories',context),
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            leading: Container(
              margin: const EdgeInsets.only(left: 15.0),
              child: Text('Categories',
                style: const TextStyle(
                    fontSize: 35.0,
                    fontWeight: FontWeight.w700,
                    color: Colors.black
                ),),
            ),
            leadingWidth: width,

            actions: [

              GestureDetector(
                  onTap:(){

                    bottomSheet();
                  },
                  child : Container(
                    margin: const EdgeInsets.only(right: 15.0),
                    child:  Icon(Iconsax.edit,color: Colors.black),
                  )
              )
            ],

            bottom:   const TabBar(
              labelColor: PrimCol.primaryColor, // Set the text color of the selected tab
              unselectedLabelColor: PrimCol.inActiveColor, //
              indicatorColor: PrimCol.primaryColor,
              indicatorPadding: EdgeInsets.symmetric(horizontal: 6.0),
              indicatorWeight: 2.0,
              // indicator: BoxDecoration(
              //   borderRadius: BorderRadius.circular(10.0),
              //
              // ),
              tabs: [
                Tab(
                  text: 'Women',
                ),
                Tab(
                  text: 'Men',
                ),
                Tab(
                  text: 'Kids',
                ),
              ],
            ),
          ),
          bottomNavigationBar:  bottomNav(0,context),
          body:  SafeArea(
            child: TabBarView(
              children: [

                //FIRST BAR VIEW
                firstBarView(bannerHeight),

                //SECOND BAR VIEW
                secondBarView(bannerHeight),

                //THIRD BAR VIEW
                thirdBarView(bannerHeight)
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
    _scrollControllerMen.addListener(() {
      if (_scrollControllerMen.position.pixels == _scrollControllerMen.position.maxScrollExtent) {
        // Reached the end of the list, trigger data reload
        setState(() {
          // Update your data source or fetch new data
          HomePageItemsMen.itemName.addAll([
            'Men Shirt',
            'Men Jacket',
            'Men Hoodie',
            'Turtle neck',
            'Men Shoe',
            'Men Watch',
          ]);
          HomePageItemsMen.itemImage.addAll([
            'assets/guyshirt.png',
            'assets/guyJacket.png',
            'assets/guyHood.png',
            'assets/guyTurtle.png',
            'assets/guyShoe.png',
            'assets/guyWatch.png',
          ]);
          HomePageItemsMen.itemPrice.addAll([
            '40',
            '320',
            '150',
            '125',
            '365',
            '10',
          ]);
          HomePageItemsMen.itemRating.addAll([
            4.0,
            2.0,
            3.75,
            2.5,
            3.75,
            2.0,
          ]);
          HomePageItemsMen.itemDescription.addAll([
            'A new shirt -- 15 yards',
            'A new Jacket -- Extra Large',
            'A new Hoodie -- Extra Large',
            'A new Turtle Neck -- Extra Large',
            'A new Calvin klien shoe -- Size 45',
            'A new Watch from versace',
          ]);
        });
      }
    });
    _scrollControllerKid.addListener(() {
      if (_scrollControllerKid.position.pixels == _scrollControllerKid.position.maxScrollExtent) {
        // Reached the end of the list, trigger data reload
        setState(() {
          // Update your data source or fetch new data
          HomePageItemsKid.itemName.addAll([
            'Baby Exclusive',
            'Baby Hat',
            'Baby Shoe',
          ]);
          HomePageItemsKid.itemImage.addAll([
            'assets/babyMama.png',
            'assets/babyHat.png',
            'assets/babyShoe.png',

          ]);
          HomePageItemsKid.itemPrice.addAll([
            '400',
            '300',
            '250',

          ]);
          HomePageItemsKid.itemRating.addAll([
            3.5,
            2.75,
            3.55,
          ]);
          HomePageItemsKid.itemDescription.addAll([
            'A new baby Materials',
            'A new Hat for babies',
            'A new Shoes for babies -- Size 14',

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
                          HomePageItems.itemImage[index],
                          HomePageItems.itemName[index],
                          HomePageItems.itemPrice[index],
                          HomePageItems.itemRating[index],
                          HomePageItems.itemDescription[index],
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
      controller: _scrollControllerMen ,
      slivers: [
        SliverToBoxAdapter(
          child:
          //BANNER
          Container(
            height: bannerHeight,
            width: double.infinity,
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

                            Text('10%',
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
                Image.asset('assets/guyshopping2.png',fit: BoxFit.fitHeight,),

              ],
            ),

          ),

        ),

        SliverList(

            delegate: SliverChildBuilderDelegate(

                  (context,index){

                if (index < HomePageItemsMen.itemImage.length){
                  return categoryItem
                    (
                      context,
                      HomePageItemsMen.itemImage[index],
                      HomePageItemsMen.itemName[index],
                      HomePageItemsMen.itemPrice[index],
                      HomePageItemsMen.itemRating[index],
                      HomePageItemsMen.itemDescription[index],
                      MediaQuery.of(context).size.width
                  );
                }

                else if (index == HomePageItemsMen.itemImage.length){
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }

                return null;
              },
              childCount: HomePageItemsMen.itemImage.length + 1,

            )),

      ],
    );
  }

  Widget thirdBarView(double bannerHeight) {

    return  CustomScrollView(
      physics: const BouncingScrollPhysics(),
      controller: _scrollControllerKid,
      slivers: [
        SliverToBoxAdapter(
          child:
          //BANNER
          Container(
            height: bannerHeight,
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 15.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: PrimCol.bannerKidsColor,
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

                            Text('10%',
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


                const SizedBox(width: 15.0,),
                //THE PROM IMAGE
                Image.asset('assets/promotion.png',height: 110.0,),
               // Icon(CupertinoIcons.aler)

              ],
            ),

          ),

        ),

        SliverList(

            delegate: SliverChildBuilderDelegate(

                  (context,index){

                //if (index < HomePageItemsKid.itemImage.length){
                  return categoryItem
                    (
                      context,
                      HomePageItemsKid.itemImage[index],
                      HomePageItemsKid.itemName[index],
                      HomePageItemsKid.itemPrice[index],
                      HomePageItemsKid.itemRating[index],
                      HomePageItemsKid.itemDescription[index],
                      MediaQuery.of(context).size.width
                  );
                //}

                // else if (index == HomePageItemsKid.itemImage.length){
                //   return const Center(
                //     child: CircularProgressIndicator(),
                //   );
                // }

                //return null;
              },
              childCount: HomePageItemsKid.itemImage.length ,

            )),

      ],
    );
  }

  void bottomSheet() {

    showModalBottomSheet<void>(
        context: context,
        shape : RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(25.0),
            topLeft: Radius.circular(25.0)
          )
        ),
        showDragHandle: true,
        builder: (BuildContext context) {

          return StatefulBuilder(
            builder: (context, setState){

              return Container(
                  height: MediaQuery.of(context).size.height / 1.5,
                  child : Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment : CrossAxisAlignment.start,
                      children:[

                        //THE FILTERS
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children:[

                              Container(),

                              Text('Filters',
                                  style: TextStyle(
                                      fontSize : 20.0,
                                      fontWeight : FontWeight.bold
                                  )),

                              Container(
                                margin : const EdgeInsets.only(right: 15.0),
                                child :  Text('Reset',
                                    style: TextStyle(
                                      color :  Colors.grey,
                                    )),
                              )



                            ]
                        ),

                        SizedBox(height: 15.0),



                        //BRANDS
                        // Container(
                        //   margin : const EdgeInsets.only(left : 20.0),
                        //   child : Text('Brands',
                        //       style: TextStyle(
                        //           fontSize : 18.0,
                        //           fontWeight : FontWeight.bold
                        //       )),
                        // ),
                        //
                        // const SizedBox(height: 15.0),
                        //
                        // Row(
                        //     children:[
                        //
                        //       GestureDetector(
                        //           onTap:(){
                        //
                        //           },
                        //           child : Container(
                        //             padding : const EdgeInsets.all(7.0),
                        //             decoration : BoxDecoration(
                        //                 borderRadius : BorderRadius.circular( 100.0)
                        //             ),
                        //             child : Text('Sony')
                        //
                        //           )
                        //       )
                        //     ]
                        // ),

                        const SizedBox(height: 10.0),

                        Container(
                          margin : const EdgeInsets.only(left : 20.0),
                          child :  Text('Colour',
                              style: TextStyle(
                                  fontSize : 18.0,
                                  fontWeight : FontWeight.bold
                              )),
                        ),

                        const SizedBox(height: 10.0),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children:[

                              const SizedBox(width: 25.0),
                              GestureDetector(
                                  onTap:(){

                                  },
                                  child : Container(
                                    width: 30.0,
                                    height: 30.0,
                                    //padding : const EdgeInsets.all(7.0),
                                    decoration : BoxDecoration(
                                        borderRadius : BorderRadius.circular( 100.0),
                                        color: Colors.red
                                    ),

                                  )
                              ),

                              const SizedBox(width: 25.0),

                              GestureDetector(
                                  onTap:(){

                                  },
                                  child : Container(
                                    width: 30.0,
                                    height: 30.0,
                                    //padding : const EdgeInsets.all(7.0),
                                    decoration : BoxDecoration(
                                        borderRadius : BorderRadius.circular( 100.0),
                                        color: Colors.blue
                                    ),
                                  )
                              ),


                              const SizedBox(width: 25.0),
                              GestureDetector(
                                  onTap:(){

                                  },
                                  child : Container(
                                    width: 30.0,
                                    height: 30.0,
                                    //padding : const EdgeInsets.all(7.0),
                                    decoration : BoxDecoration(
                                        borderRadius : BorderRadius.circular( 100.0),
                                        color: Colors.purple
                                    ),
                                  )
                              ),
                              const SizedBox(width: 25.0),
                              GestureDetector(
                                  onTap:(){

                                  },
                                  child : Container(
                                    width: 30.0,
                                    height: 30.0,
                                    //padding : const EdgeInsets.all(7.0),
                                    decoration : BoxDecoration(
                                        borderRadius : BorderRadius.circular( 100.0),
                                        color: Colors.pink
                                    ),
                                  )
                              ),
                              const SizedBox(width: 25.0),
                              GestureDetector(
                                  onTap:(){

                                  },
                                  child : Container(
                                    width: 30.0,
                                    height: 30.0,
                                    //padding : const EdgeInsets.all(7.0),
                                    decoration : BoxDecoration(
                                        borderRadius : BorderRadius.circular( 100.0),
                                        border : Border.all(color: PrimCol.primaryColor)
                                    ),
                                  )
                              ),
                            ]
                        ),


                        const SizedBox(height: 20.0),

                        Container(
                          margin : const EdgeInsets.only(left : 20.0),
                          child :  Text('Sort by',
                              style: TextStyle(
                                  fontSize : 18.0,
                                  fontWeight : FontWeight.bold
                              )),
                        ),

                        const SizedBox(height: 10.0),
                        Container(
                            width : MediaQuery.of(context).size.width,
                            height : 50.0,
                            child : ListView(
                                scrollDirection: Axis.horizontal,
                                children: [

                                  const SizedBox(width: 25.0),
                                  GestureDetector(
                                      onTap:(){

                                        setState((){
                                          low = !low;
                                        });
                                      },
                                      child : Container(

                                          padding : const EdgeInsets.all(15.0),
                                          decoration : BoxDecoration(
                                              borderRadius : BorderRadius.circular( 10.0),
                                              border : Border.all(color: Colors.grey),
                                            color: (low == true) ? PrimCol.primaryColor : null

                                          ),
                                          child : Text('lowest prices',
                                          style: TextStyle(
                                            color: (low == true) ? Colors.white : Colors.black
                                          ))

                                      )
                                  ),

                                  const SizedBox(width: 25.0),

                                  GestureDetector(
                                      onTap:(){

                                        setState((){
                                          AZ = !AZ;
                                        });
                                      },
                                      child : Container(

                                          padding : const EdgeInsets.all(15.0),
                                          decoration : BoxDecoration(
                                              borderRadius : BorderRadius.circular( 10.0),
                                              border : Border.all(color: Colors.grey),
                                            color : (AZ == true) ? PrimCol.primaryColor : null

                                          ),
                                          child : Text('A-Z',
                                             style: TextStyle(
                                                  color: (AZ == true) ? Colors.white : Colors.black
                                              ))

                                      )
                                  ),


                                  const SizedBox(width: 25.0),
                                  GestureDetector(
                                      onTap:(){

                                        setState((){
                                          ZA = !ZA;
                                        });
                                      },
                                      child : Container(

                                          padding : const EdgeInsets.all(15.0),
                                          decoration : BoxDecoration(
                                              borderRadius : BorderRadius.circular( 10.0),
                                              border : Border.all(color: Colors.grey),
                                            color: (ZA == true) ? PrimCol.primaryColor : null,

                                          ),
                                          child : Text('Z - A',
                                              style:TextStyle(
                                                  color: (ZA == true) ? Colors.white : Colors.black
                                              ))

                                      )
                                  ),
                                  const SizedBox(width: 25.0),
                                  GestureDetector(
                                      onTap:(){

                                        setState((){
                                          Dis = !Dis;
                                        });
                                      },
                                      child : Container(

                                          padding : const EdgeInsets.all(15.0),
                                          decoration : BoxDecoration(
                                              borderRadius : BorderRadius.circular( 10.0),
                                              border : Border.all(color: Colors.grey),
                                            color : (Dis == true)? PrimCol.primaryColor : null

                                          ),
                                          child : Text('Discounts',
                                              style:TextStyle(
                                                  color: (Dis == true) ? Colors.white : Colors.black
                                              ))

                                      )
                                  ),

                                  const SizedBox(width: 25.0),
                                ]
                            )
                        ),

                        const SizedBox(height: 50.0),


                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 50.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0)
                          ),
                          margin: const EdgeInsets.symmetric(horizontal: 15.0),
                          clipBehavior : Clip.hardEdge,
                          child: TextButton(
                              onPressed: () {

                                Navigator.pop(context);

                              },
                              style: TextButton.styleFrom(
                                  foregroundColor: Colors.white, textStyle: const TextStyle(fontSize: 20.0),
                                  backgroundColor: PrimCol.primaryColor),
                              child: Text('Filter',
                              style : TextStyle(
                                color: Colors. white
                              ))
                          ),
                        ),

                      ]
                  )
              );
            }
          );
        }
    );
  }
}
