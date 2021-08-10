import 'package:brilloca_app/Widget/background_image.dart';
import 'package:brilloca_app/Widget/colors.dart';
import 'package:brilloca_app/Widget/text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController salulation = TextEditingController();
  final TextEditingController firstName = TextEditingController();
  final TextEditingController lastName = TextEditingController();
  final TextEditingController firmName = TextEditingController();
  final TextEditingController dob = TextEditingController();
  final TextEditingController emailId = TextEditingController();
  final TextEditingController mobileNo = TextEditingController();
  final TextEditingController address = TextEditingController();
  final TextEditingController city = TextEditingController();
  final TextEditingController state = TextEditingController();
  final TextEditingController areaPinCode = TextEditingController();
  final TextEditingController maritalStatus = TextEditingController();
  final TextEditingController selectSalesBD = TextEditingController();
  final TextEditingController salesBdName = TextEditingController();
  final TextEditingController salesPersonBDMobileNo = TextEditingController();
  final TextEditingController salesPersonBDCity = TextEditingController();
  final TextEditingController salesPersonBDTerritory = TextEditingController();
  final TextEditingController salesPersonBDState = TextEditingController();
  final TextEditingController salesPersonBDRegion = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundImage(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
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
                        controller:salulation,
                        keyboardType: TextInputType.text,
                        style: kHintStyleStyle,
                        cursorColor: Colors.white,
                        decoration: const InputDecoration(
                          fillColor: Colors.white,
                          hintText: "Salulation",
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
                const SizedBox(height: 10,),
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
                        controller:firstName,
                        keyboardType: TextInputType.text,
                        style: kHintStyleStyle,
                        cursorColor: Colors.white,
                        decoration: const InputDecoration(
                          fillColor: Colors.white,
                          hintText: "First Name",
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
                const SizedBox(height: 10,),
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
                        controller:lastName,
                        keyboardType: TextInputType.text,
                        style: kHintStyleStyle,
                        cursorColor: Colors.white,
                        decoration: const InputDecoration(
                          fillColor: Colors.white,
                          hintText: "Last Name",
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
                const SizedBox(height: 10,),
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
                        controller:firmName,
                        keyboardType: TextInputType.text,
                        style: kHintStyleStyle,
                        cursorColor: Colors.white,
                        decoration: const InputDecoration(
                          fillColor: Colors.white,
                          hintText: "Firm Name",
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
                const SizedBox(height: 10,),
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
                        controller:dob,
                        keyboardType: TextInputType.text,
                        style: kHintStyleStyle,
                        cursorColor: Colors.white,
                        decoration: const InputDecoration(
                          fillColor: Colors.white,
                          hintText: "D.O.B",
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
                const SizedBox(height: 10,),
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
                        controller:emailId,
                        keyboardType: TextInputType.text,
                        style: kHintStyleStyle,
                        cursorColor: Colors.white,
                        decoration: const InputDecoration(
                          fillColor: Colors.white,
                          hintText: "Email Id",
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
                const SizedBox(height: 10,),
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
                const SizedBox(height: 10,),
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
                        controller:address,
                        keyboardType: TextInputType.text,
                        style: kHintStyleStyle,
                        cursorColor: Colors.white,
                        decoration: const InputDecoration(
                          fillColor: Colors.white,
                          hintText: "Address",
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
                const SizedBox(height: 10,),
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
                        controller:city,
                        keyboardType: TextInputType.text,
                        style: kHintStyleStyle,
                        cursorColor: Colors.white,
                        decoration: const InputDecoration(
                          fillColor: Colors.white,
                          hintText: "City",
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
                const SizedBox(height: 10,),
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
                        controller:state,
                        keyboardType: TextInputType.text,
                        style: kHintStyleStyle,
                        cursorColor: Colors.white,
                        decoration: const InputDecoration(
                          fillColor: Colors.white,
                          hintText: "State",
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
                const SizedBox(height: 10,),
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
                        controller:areaPinCode,
                        keyboardType: TextInputType.text,
                        style: kHintStyleStyle,
                        cursorColor: Colors.white,
                        decoration: const InputDecoration(
                          fillColor: Colors.white,
                          hintText: "Area Pin Code",
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
                const SizedBox(height: 10,),
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
                        controller:maritalStatus,
                        keyboardType: TextInputType.text,
                        style: kHintStyleStyle,
                        cursorColor: Colors.white,
                        decoration: const InputDecoration(
                          fillColor: Colors.white,
                          hintText: "Marital Status",
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
                const SizedBox(height: 10,),
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
                        controller:selectSalesBD,
                        keyboardType: TextInputType.text,
                        style: kHintStyleStyle,
                        cursorColor: Colors.white,
                        decoration: const InputDecoration(
                          fillColor: Colors.white,
                          hintText: "Select Sales BD",
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
                const SizedBox(height: 10,),
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
                        controller:salesBdName,
                        keyboardType: TextInputType.text,
                        style: kHintStyleStyle,
                        cursorColor: Colors.white,
                        decoration: const InputDecoration(
                          fillColor: Colors.white,
                          hintText: "Sales BD Name",
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
                const SizedBox(height: 10,),
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
                        controller:salesPersonBDMobileNo,
                        keyboardType: TextInputType.text,
                        style: kHintStyleStyle,
                        cursorColor: Colors.white,
                        decoration: const InputDecoration(
                          fillColor: Colors.white,
                          hintText: "Sales Person BD MobileNo",
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
                const SizedBox(height: 10,),
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
                        controller:salesPersonBDCity,
                        keyboardType: TextInputType.text,
                        style: kHintStyleStyle,
                        cursorColor: Colors.white,
                        decoration: const InputDecoration(
                          fillColor: Colors.white,
                          hintText: "Sales Person BD City",
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
                const SizedBox(height: 10,),
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
                        controller:salesPersonBDTerritory,
                        keyboardType: TextInputType.text,
                        style: kHintStyleStyle,
                        cursorColor: Colors.white,
                        decoration: const InputDecoration(
                          fillColor: Colors.white,
                          hintText: "Sales Person BD Territory",
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
                const SizedBox(height: 10,),
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
                        controller:salesPersonBDState,
                        keyboardType: TextInputType.text,
                        style: kHintStyleStyle,
                        cursorColor: Colors.white,
                        decoration: const InputDecoration(
                          fillColor: Colors.white,
                          hintText: "salesPersonBDState",
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
                const SizedBox(height: 10,),
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
                        controller:salesPersonBDRegion,
                        keyboardType: TextInputType.text,
                        style: kHintStyleStyle,
                        cursorColor: Colors.white,
                        decoration: const InputDecoration(
                          fillColor: Colors.white,
                          hintText: "Sales Person BD Region",
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
                InkWell(
                  //onTap: getSignInApi,
                  child: Container(
                    decoration: BoxDecoration(
                        color: kWhiteColor,
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child: const Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 80,vertical: 10),
                      child: Text('ENROLMENT',style: kSignInStyle,),
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
