import 'package:brilloca_app/API/api_service.dart';
import 'package:brilloca_app/Model/forgot_password_model.dart';
import 'package:brilloca_app/Screen/ChangePassword/change_password.dart';
import 'package:brilloca_app/Widget/background_image.dart';
import 'package:brilloca_app/Widget/colors.dart';
import 'package:brilloca_app/Widget/text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  _ForgetPasswordScreenState createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  final GlobalKey<FormState> _FormKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();
 late ForgotPasswordRequestModel requestModel;
 late APIService service;
  final TextEditingController mobileNo = TextEditingController();
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

  Future getForgetPasswordScreenApi() async {
    if(validateAndSave()){
      print("working");
      requestModel = ForgotPasswordRequestModel(
          mobileNo:mobileNo.text.toString(),
      );
      var responce = await service.forgotPassword(requestModel);
      if(responce != null) {
        print(responce.forgotPassword);
        if(responce.forgotPassword.errorCode == "0") {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ChangePasswordScreen()));
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
                    child:Text('Forget Password',style: kWelcomeTextStyle,),
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
                              return 'Please enter Mobile Number';
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

                  const SizedBox(height: 40,),
                  GestureDetector(
                 onTap: getForgetPasswordScreenApi,
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
    );
  }
}
