// To parse this JSON data, do
//
//     final changePassword = changePasswordFromJson(jsonString);

import 'dart:convert';

ChangePassword changePasswordFromJson(String str) => ChangePassword.fromJson(json.decode(str));

String changePasswordToJson(ChangePassword data) => json.encode(data.toJson());

class ChangePassword {
  ChangePassword({
    required this.changePassword,
  });

  ChangePasswordClass changePassword;

  factory ChangePassword.fromJson(Map<String, dynamic> json) => ChangePassword(
    changePassword: ChangePasswordClass.fromJson(json["ChangePassword"]),
  );

  Map<String, dynamic> toJson() => {
    "ChangePassword": changePassword.toJson(),
  };
}

class ChangePasswordClass {
  ChangePasswordClass({
    required this.errorCode,
    required this.result,
  });

  String errorCode;
  String result;

  factory ChangePasswordClass.fromJson(Map<String, dynamic> json) => ChangePasswordClass(
    errorCode: json["ErrorCode"],
    result: json["Result"],
  );

  Map<String, dynamic> toJson() => {
    "ErrorCode": errorCode,
    "Result": result,
  };
}


class ChangePasswordRequestModel {
  String mobileNo;
  String oldPassword;
  String newPassword;

  ChangePasswordRequestModel({
    required this.mobileNo,required this.newPassword,required this.oldPassword
  });

  Map<String, String> toJson() {
    Map<String, String> map = {
      'MobileNo': mobileNo.trim(),
      'OldPassword': newPassword.trim(),
      'NewPassword': oldPassword.trim(),
    };
    return map;
  }
}
