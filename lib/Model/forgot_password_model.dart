// To parse this JSON data, do
//
//     final forgotPassword = forgotPasswordFromJson(jsonString);

import 'dart:convert';

ForgotPassword forgotPasswordFromJson(String str) => ForgotPassword.fromJson(json.decode(str));

String forgotPasswordToJson(ForgotPassword data) => json.encode(data.toJson());

class ForgotPassword {
  ForgotPassword({
    required this.forgotPassword,
  });

  ForgotPasswordClass forgotPassword;

  factory ForgotPassword.fromJson(Map<String, dynamic> json) => ForgotPassword(
    forgotPassword: ForgotPasswordClass.fromJson(json["ForgotPassword"]),
  );

  Map<String, dynamic> toJson() => {
    "ForgotPassword": forgotPassword.toJson(),
  };
}

class ForgotPasswordClass {
  ForgotPasswordClass({
    required this.errorCode,
    required this.result,
  });

  String errorCode;
  String result;

  factory ForgotPasswordClass.fromJson(Map<String, dynamic> json) => ForgotPasswordClass(
    errorCode: json["ErrorCode"],
    result: json["Result"],
  );

  Map<String, dynamic> toJson() => {
    "ErrorCode": errorCode,
    "Result": result,
  };
}


 class ForgotPasswordRequestModel{
 final String mobileNo;
ForgotPasswordRequestModel({required this.mobileNo});

 Map<String, String> toJson() {
   Map<String, String> map = {
     'MobileNo': mobileNo.trim(),
   };
   return map;
 }

}
