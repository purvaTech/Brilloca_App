import 'package:brilloca_app/Screen/Home/Components/data.dart';
import 'package:brilloca_app/Screen/Sign%20In/sign_in_screen.dart';
import 'package:brilloca_app/Widget/text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../Widget/colors.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {


  Future<bool> _logoutPop() async {
    return (await showDialog(
      context: context,
      builder: (context) =>  AlertDialog(
        title:  const Text(
          "Are you sure",
        ),
        content:const  Text("Do you want to Log Out?"),
        actions: <Widget>[
          FlatButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: const Text(
              "No",
              style: TextStyle(
                color: Color(0xffd10a0d),
              ),
            ),
          ),
          FlatButton(
            onPressed: () async {

              SharedPreferences prefs =
              await SharedPreferences.getInstance();
              //prefs.remove('logged_in');
              prefs.clear();
              Navigator.of(context).pop();

            },
            child:
            const Text("Yes", style: TextStyle(color: Color(0xffd10a0d))),
          ),
        ],
      ),
    )) ??
        false;
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child:  ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(vertical: 40),
              decoration: const BoxDecoration(
                  gradient:kLinearGradientColor,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(0.0),
                    topLeft: Radius.circular(0.0),
                    bottomRight: Radius.circular(20.0),
                    bottomLeft: Radius.circular(20.0),
                  )
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      width:80.0,height:80.0,
                      decoration:  const BoxDecoration(
                          shape: BoxShape.circle,
                          image:  DecorationImage(
                              fit: BoxFit.fill,
                              image:AssetImage('assets/image/Profile_picture.png')
                          )
                      )),
                  SizedBox(width: 15,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Shubham Sharma",
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      SizedBox(height: 13,),
                      Text("Member ID : XXXXXXXXXX",
                          style: const TextStyle(
                              fontSize: 13,
                              letterSpacing: .3)
                      ),
                      SizedBox(height: 10,),
                      Text( "Mobile No. : XXXXXXXXXX",
                          style: const TextStyle(
                              fontSize: 13,
                              letterSpacing: .3)
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 60,top: 30),
              decoration:  const BoxDecoration(color:kDarkBlueColor,
                borderRadius: BorderRadius.all(Radius.circular(20)),),
              child: Column(
                children: [
                  MenuItem(
                    onTab: (){
                      Navigator.pop(context);
                      // Navigator.push(context,
                      //      MaterialPageRoute(builder: (context) => new HomePage()));
                    },
                    text: 'Home',
                    assetImage: 'assets/icons/Home_Gold.png',

                  ),
                  Divider(color: kLightGoldColor),
                  MenuItem(
                    onTab: (){
                      Navigator.pop(context);
                      // Navigator.push(context,
                      //      MaterialPageRoute(builder: (context) => new HomePage()));
                    },
                    text: 'My Account',
                    assetImage: 'assets/icons/My-Account_Gold.png',

                  ),
                  Divider(color: kLightGoldColor),
                  MenuItem(
                    onTab: (){
                      Navigator.pop(context);
                      // Navigator.push(context,
                      //      MaterialPageRoute(builder: (context) => new HomePage()));
                    },
                    text: 'Upload Invoice',
                    assetImage: 'assets/icons/Upload-Invoice_Gold.png',

                  ),
                  Divider(color: kLightGoldColor),
                  MenuItem(
                    onTab: (){
                      Navigator.pop(context);
                      // Navigator.push(context,
                      //      MaterialPageRoute(builder: (context) => new HomePage()));
                    },
                    text: 'Redemption Catalogue',
                    assetImage: 'assets/icons/Redemption-catalogue_Gold.png',

                  ),
                  Divider(color: kLightGoldColor),
                  MenuItem(
                    onTab: (){
                      Navigator.pop(context);
                      // Navigator.push(context,
                      //      MaterialPageRoute(builder: (context) => new HomePage()));
                    },
                    text: 'Special Offer',
                    assetImage: 'assets/icons/Special-Offer_Gold.png',

                  ),
                  Divider(color: kLightGoldColor),
                  MenuItem(
                    onTab: (){
                      Navigator.pop(context);
                      // Navigator.push(context,
                      //      MaterialPageRoute(builder: (context) => new HomePage()));
                    },
                    text: 'Architect Lobby',
                    assetImage: 'assets/icons/Architect_Lobby_Gold.png',

                  ),
                  Divider(color: kLightGoldColor),
                  MenuItem(
                    onTab: (){
                      Navigator.pop(context);
                      // Navigator.push(context,
                      //      MaterialPageRoute(builder: (context) => new HomePage()));
                    },
                    text: 'Update Profile',
                    assetImage: 'assets/icons/Update-Profile.png',

                  ),
                  Divider(color: kLightGoldColor),
                  MenuItem(
                    onTab: (){
                      Navigator.pop(context);
                      // Navigator.push(context,
                      //      MaterialPageRoute(builder: (context) => new HomePage()));
                    },
                    text: 'FAQs',
                    assetImage: 'assets/icons/FAQs_Gold.png',
                  ),
                  Divider(color: kLightGoldColor),
                  MenuItem(
                    onTab: (){
                      Navigator.pop(context);
                      // Navigator.push(context,
                      //      MaterialPageRoute(builder: (context) => new HomePage()));
                    },
                    text: 'T&C',
                    assetImage: 'assets/icons/T&C_Gold.png',

                  ),
                  const Divider(color: kLightGoldColor),
                  MenuItem(
                    onTab: () async {
                      SharedPreferences prefs = await SharedPreferences.getInstance();
                      prefs.clear();
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (BuildContext ctx) => const SignInScreen()));
                    },
                    text: 'Logout',
                    assetImage: 'assets/icons/Logout_Gold.png',

                  ),
                ],
              ),
            )
          ],
        ));
  }
}



class MenuItem extends StatelessWidget {
  final String assetImage,text;
  final Function onTab;
  const MenuItem({Key? key, required this.assetImage, required this.text, required this.onTab,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
              // Navigator.push(context,
              //      MaterialPageRoute(builder: (context) => new HomePage()));
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
              child: Row(
                children: [
                  Image.asset(assetImage,width: 20,height: 20,),
                  SizedBox(width: 15,),
                  Text(text,style: kMenuItemStyle,),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
