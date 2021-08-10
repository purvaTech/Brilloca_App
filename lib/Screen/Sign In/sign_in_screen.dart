import 'package:brilloca_app/API/api_service.dart';
import 'package:brilloca_app/Model/sign_in_model.dart';
import 'package:brilloca_app/Screen/ChangePassword/change_password.dart';
import 'package:brilloca_app/Screen/Forget%20Password/forget_password.dart';
import 'package:brilloca_app/Screen/Home/home_screen.dart';
import 'package:brilloca_app/Screen/SignUp/sign_up_screen.dart';
import 'package:brilloca_app/Utility/custom_toast.dart';
import 'package:brilloca_app/Widget/background_image.dart';
import 'package:brilloca_app/Widget/colors.dart';
import 'package:brilloca_app/Widget/text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key,}) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  GlobalKey<FormState> _FormKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  late SignInRequestModel requestModel;
  late APIService service;
  final TextEditingController userId = TextEditingController();
  final TextEditingController password = TextEditingController();
  bool _value = false;
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

  Future getSignInApi() async {
    if(validateAndSave()){
      requestModel = SignInRequestModel(
          password:password.text.toString(),
          userName:userId.text.toString(),
          deviceId: 'xyz',
          oSType: 'android');
      var responce = await service.signIn(requestModel);
      if(responce != null) {
        CustomToast.showToast(responce.loginApi.result);
      //  print(responce.loginApi.result);
        if(responce.loginApi.errorCode == "0") {

         // responce.loginApi.response[0].loginId;
          SharedPreferences _preferences = await SharedPreferences.getInstance();
          _preferences.setBool('logged_in', true);
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
      body: BackgroundImage(
        child: SingleChildScrollView(
          child: SafeArea(
            child:Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 20),
              child: Form(
                key: _FormKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(nameAsset,width: 200,height: 200,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(width: 8,),
                           Text('Welcome to',style: kWelcomeTextStyle,),
                           SizedBox(width: 8,),
                           Text('CLUB BRILLOCA ',style: kWelcomeBoldTextStyle,),
                        ],
                      ),
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
                            controller:userId,
                            keyboardType: TextInputType.text,
                            style: kHintStyleStyle,
                            cursorColor: Colors.white,
                            decoration: const InputDecoration(
                              fillColor: Colors.white,
                              hintText: "User ID",
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
                            controller: password,
                            // validator: (input)=> input!.length<3
                            //     ?'Password should be then 3 charcters'
                            //     :null,

                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter Password';
                              }
                              return null;
                            },

                            keyboardType: TextInputType.visiblePassword,
                            style:kHintStyleStyle ,
                            obscureText: true,
                            cursorColor: Colors.white,
                            decoration: const InputDecoration(
                              fillColor: Colors.white,
                              hintText: "Password",
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

                    Theme(
                      data: ThemeData(
                          unselectedWidgetColor: Colors.white
                      ),
                      child:CheckboxListTile(
                        controlAffinity: ListTileControlAffinity.leading,
                        activeColor:Colors.white,
                        checkColor: kGoldColor,
                        title: const Text('keep me logged in',style: kHintStyleStyle,),
                        value: _value,
                        onChanged: (value) {
                          setState(() {
                            _value = value!;
                          });
                        },
                        selected: _value,
                      ),
                    ),
                    InkWell(
                      onTap: getSignInApi,
                      child: Container(
                        decoration: BoxDecoration(
                            color: kWhiteColor,
                            borderRadius: BorderRadius.circular(30)
                        ),
                        child: const Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 80,vertical: 10),
                          child: Text('SIGN IN',style: kSignInStyle,),
                        ),
                      ),
                    ),
                      Padding(
                      padding:  const EdgeInsets.only(top: 20),
                      child: InkWell(
                        onTap:(){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) =>
                          const ChangePasswordScreen()));
                        },
                          child: const Text('Change Password?',style: kForgetPasswordStyle,)),
                    ),
                    Padding(
                      padding:  const EdgeInsets.only(top: 10),
                      child: InkWell(
                          onTap:(){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) =>
                            const ForgetPasswordScreen()));
                          },
                          child: const Text('Forget Password?',style: kForgetPasswordStyle,)),
                    ),
                    Padding(
                      padding:  const EdgeInsets.only(top: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Not Signed in Yet.',style: kForgetPasswordStyle,),
                          InkWell(
                              onTap:(){
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) =>
                                const SignUpScreen()));
                              },
                               child: Text('Sign Up Now',style: kForgetPasswordStyle,)),
                        ],
                      ),
                    )

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
