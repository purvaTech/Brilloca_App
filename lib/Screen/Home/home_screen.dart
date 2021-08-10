import 'package:brilloca_app/Widget/background_image.dart';
import 'package:brilloca_app/Widget/colors.dart';
import 'package:brilloca_app/Screen/DrawerScreen/side_bar.dart';
import 'package:brilloca_app/Widget/text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Components/data.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();



  @override
  Widget build(BuildContext context) {
    return Scaffold(

      key: _scaffoldKey,
      resizeToAvoidBottomInset: false,
      drawer: Theme(
          data: Theme.of(context).copyWith(
        // Set the transparency here
        canvasColor: Colors.transparent, //or any other color you want. e.g Colors.blue.withOpacity(0.5)
      ),
      child: const DrawerScreen()),

      appBar: AppBar(
        elevation: 0,
        backgroundColor: kDarkBlueColor,
        leading:Padding(
          padding: const EdgeInsets.only(left: 18,top: 10,bottom: 10),
          child: InkWell(
            onTap: (){
              _scaffoldKey.currentState!.openDrawer();
            },
              child: Image.asset('assets/icons/Menu.png',width: 80,height: 80,)),
        ),
        title: const Text('CLUB BRILLOCA'),
        actions: [
          Image.asset('assets/icons/Logo_ic.png',width: 100,height: 100,),
        ],
      ),
      body:  SingleChildScrollView(
        child: BackgroundImage(
          child: SafeArea(
            child: Column(
              children: [
               Stack(
                 children: [
                   Container(
                     width: MediaQuery.of(context).size.width,
                     decoration: const BoxDecoration(
                         gradient:kLinearGradientColor,
                         borderRadius: BorderRadius.only(
                           topRight: Radius.circular(0.0),
                           topLeft: Radius.circular(0.0),
                           bottomRight: Radius.circular(20.0),
                           bottomLeft: Radius.circular(20.0),
                         )
                     ),
                     child: Padding(
                       padding: const EdgeInsets.only(top: 20,bottom: 40),
                       child: ListView.builder(
                         physics: const NeverScrollableScrollPhysics(),
                         shrinkWrap: true,
                         itemCount:details.length,
                         itemBuilder: (BuildContext context, int index) {
                           return Column(
                             crossAxisAlignment: CrossAxisAlignment.center,
                             children: <Widget>[
                               Container(
                                   width:80.0,
                                   height:80.0,
                                   decoration:  BoxDecoration(
                                       shape: BoxShape.circle,
                                       image:  DecorationImage(
                                           fit: BoxFit.fill,
                                           image:AssetImage(
                                             details[index]['imageUrl'],
                                           )
                                       )
                                   )),
                               const SizedBox(
                                 height: 6,
                               ),
                               Text(
                                 details[index]['name'],
                                 style: const TextStyle(
                                     fontWeight: FontWeight.bold, fontSize: 18),
                               ),
                               const SizedBox(
                                 height: 6,
                               ),
                               Text(details[index]['day'],
                                   style: const TextStyle(
                                       fontSize: 13,
                                       letterSpacing: .3)
                               ),
                               const SizedBox(
                                 height: 6,
                               ),

                               Text(details[index]['time'],
                                   style: const TextStyle(
                                       fontSize: 13,
                                       letterSpacing: .3)
                               ),


                             ],
                           );
                         },
                       ),
                     ),
                   ),
                   Center(
                     child: Container(width: 150,
                       margin: EdgeInsets.only(top: 190),
                       alignment: Alignment.bottomCenter,
                       padding:const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
                       decoration:  BoxDecoration(
                         color: kDarkBlueColor,
                           border:Border.all(color:kGoldColor,width: 2),
                         borderRadius:BorderRadius.all(Radius.circular(20.0)),
                       ),
                       child: const Text(
                         'MY ACCOUNT',
                         style: TextStyle(
                           fontFamily: 'SF Pro',
                           color: Colors.white,
                           fontWeight: FontWeight.w500,
                           fontSize: 16.0,
                         ),
                       ),
                     ),
                   ),
                 ],
               ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15,bottom: 10),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const CategoryCircle(text: 'New \n Enrolment', assetImage:'assets/icons/category/Update-Profile_Blue.png',),
                            const CategoryCircle(text: 'Authorizations', assetImage:'assets/icons/category/Update-Profile_Blue.png',),
                            const CategoryCircle(text: 'Upload \n Invoice', assetImage: 'assets/icons/category/Update-Profile_Blue.png',),

                          ],
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                            decoration: const BoxDecoration(
                                gradient:kLinearGradientColor,
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(0.0),
                                  topLeft: Radius.circular(15.0),
                                  bottomRight: Radius.circular(15.0),
                                  bottomLeft: Radius.circular(0.0),
                                )
                            ),
                            child: const Text('Special Offers',style: kSpecialOffersStyle,)),
                        Expanded(
                          child: ListView.builder(
                            itemCount: 10,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                width: 300,
                                margin: const EdgeInsets.only(right: 6),
                                decoration: const BoxDecoration(
                                    image:  DecorationImage(
                                        fit: BoxFit.fill,
                                        image:AssetImage('assets/image/banner.jpg')
                                    )
                                ),

                              );
                            },

                          ),
                        ),

                        Container(
                          margin:EdgeInsets.only(top: 30) ,
                            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                            decoration: const BoxDecoration(
                                gradient:kLinearGradientColor,
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(0.0),
                                  topLeft: Radius.circular(15.0),
                                  bottomRight: Radius.circular(15.0),
                                  bottomLeft: Radius.circular(0.0),
                                )
                            ),
                            child: const Text('Redemption Catelogue',style: kSpecialOffersStyle,)),
                        Expanded(
                          child: ListView.builder(
                            itemCount: 10,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                width: 300,
                                margin: const EdgeInsets.only(right: 6),
                                decoration: BoxDecoration(
                                  color: kDarkBlueColor,
                                    border: Border.all(color:kGoldColor)
                                ),
                                child:Image.asset('assets/image/Product.png')

                              );
                            },

                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

          ),

        ),
      ),
    );
  }
}



class CategoryCircle extends StatelessWidget {
  final String text;final String assetImage;
  const CategoryCircle({Key? key, required this.text, required this.assetImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 80,height: 80,
              padding: const EdgeInsets.all(18.0),
              decoration:const BoxDecoration(
                shape: BoxShape.circle,

                gradient: kLinearGradientColor,

              ),
              child:Image.asset(assetImage) ,

            ),
            const SizedBox(
              height: 8,
            ),
             Text(text,textAlign:TextAlign.center,style: kCategoryCircleStyle,)
          ],
        ),
      )
    );
  }
}


