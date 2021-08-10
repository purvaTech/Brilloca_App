import 'package:brilloca_app/API/api_service.dart';
import 'package:brilloca_app/Model/change_password_model.dart';
import 'package:brilloca_app/Screen/Home/home_screen.dart';
import 'package:brilloca_app/Widget/background_image.dart';
import 'package:brilloca_app/Widget/colors.dart';
import 'package:brilloca_app/Widget/text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({Key? key}) : super(key: key);

  @override
  _ChangePasswordScreenState createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  final GlobalKey<FormState> _FormKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  late ChangePasswordRequestModel requestModel;
  late APIService service;
  final TextEditingController mobileNo = TextEditingController();
  final TextEditingController oldPassword = TextEditingController();
  final TextEditingController newPassword = TextEditingController();
  bool isLoading = false;
  String nameAsset="assets/icons/Logo_ic.png";

  @override
  void initState() {
    super.initState();
    service = APIService();
  }

  bool validateAndSave() {
    final form = _FormKey.currentState;
    if (form!.validate()) {
      form.save();
      return true;
    }

    return false;
  }

  Future getChangePasswordScreenApi() async {
    if(validateAndSave()){
      print("working");
      requestModel = ChangePasswordRequestModel(
          mobileNo:mobileNo.text.toString(),
          newPassword:newPassword.text.toString(),
          oldPassword:oldPassword.text.toString()
      );
      var responce = await service.changePassword(requestModel);
      if(responce != null) {
        print(responce.changePassword);
        if(responce.changePassword.errorCode == "0") {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => const HomeScreen()));
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: BackgroundImage(
          child: SafeArea(
            child:Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 20),
              child: Form(
                key: _FormKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(nameAsset,width: 200,height: 200,),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child:Text('Change Password',style: kWelcomeTextStyle,),
                    ),
                    const SizedBox(height: 40,),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Container(
                          padding: const EdgeInsets.only(left: 40),
                          child:TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter UserId';
                              }
                              return null;
                            },
                            controller:mobileNo,
                            keyboardType: TextInputType.text,
                            style: kHintStyleStyle,
                            cursorColor: Colors.white,
                            decoration: const InputDecoration(
                              fillColor: Colors.white,
                              hintText: "Mobile Number",
                              hintStyle:kHintStyleStyle ,
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                            ),

                          ),
                          decoration: kInnerDecoration,
                        ),
                      ),
                      decoration: kGradientBoxDecoration,
                    ),

                    const SizedBox(height: 20,),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Container(
                          padding: const EdgeInsets.only(left: 40),
                          child:TextFormField(
                            controller: oldPassword,
                            // validator: (input)=> input!.length<3
                            //     ?'Password should be then 3 charcters'
                            //     :null,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter Old Password';
                              }
                              return null;
                            },

                            keyboardType: TextInputType.visiblePassword,
                            style:kHintStyleStyle ,
                            obscureText: true,
                            cursorColor: Colors.white,
                            decoration: const InputDecoration(
                              fillColor: Colors.white,
                              hintText: "Old Password",
                              hintStyle:kHintStyleStyle ,
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                            ),
                          ),
                          decoration: kInnerDecoration,
                        ),
                      ),
                      decoration: kGradientBoxDecoration,
                    ),
                    const SizedBox(height: 20,),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Container(
                          padding: const EdgeInsets.only(left: 40),
                          child:TextFormField(
                            controller: newPassword,
                            // validator: (input)=> input!.length<3
                            //     ?'Password should be then 3 charcters'
                            //     :null,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter New Password';
                              }
                              return null;
                            },

                            keyboardType: TextInputType.visiblePassword,
                            style:kHintStyleStyle ,
                            obscureText: true,
                            cursorColor: Colors.white,
                            decoration: const InputDecoration(
                              fillColor: Colors.white,
                              hintText: "New Password",
                              hintStyle:kHintStyleStyle ,
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                            ),
                          ),
                          decoration: kInnerDecoration,
                        ),
                      ),
                      decoration: kGradientBoxDecoration,
                    ),
                    const SizedBox(height: 20,),
                    GestureDetector(
                      onTap: getChangePasswordScreenApi,
                      child: Container(
                        decoration: BoxDecoration(
                            color: kWhiteColor,
                            borderRadius: BorderRadius.circular(30)
                        ),
                        child: const Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 80,vertical: 10),
                          child: Text('SAVE',style: kSignInStyle,),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
