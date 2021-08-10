import 'package:flutter/material.dart';

// Colors that we use in our app
const kBlackColor = Color(0xFF000000);
const kWhiteColor = Color(0xFFFFFFFF);
const kGoldColor = Color(0xFF633f06);
const kLightGoldColor = Color(0xFFffe48c);
const kDarkBlueColor = Color(0xFF1a295e);
//const kLinearGradientColor =   LinearGradient(colors: [Color(0xFFb59943), Color(0xFFfae661)]);
const kLinearGradientColor =   LinearGradient(
  colors: [
    Color(0xff633f06),
    Color(0xffffe48c),
    Color(0xff633f04)],
  begin: FractionalOffset.centerLeft,
  end: FractionalOffset.centerRight,
);


final kInnerDecoration = BoxDecoration(
  color:kDarkBlueColor,
  //border: Border.all(color: Colors.white),
  borderRadius: BorderRadius.circular(32),
);

final kGradientBoxDecoration = BoxDecoration(
  gradient: kLinearGradientColor,

  borderRadius: BorderRadius.circular(32),
);