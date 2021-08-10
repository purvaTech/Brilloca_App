// To parse this JSON data, do
//
//     final signIn = signInFromJson(jsonString);

import 'dart:convert';

SignIn signInFromJson(String str) => SignIn.fromJson(json.decode(str));

String signInToJson(SignIn data) => json.encode(data.toJson());

class SignIn {
  SignIn({
    required this.loginApi,
  });

  LoginApi loginApi;

  factory SignIn.fromJson(Map<String, dynamic> json) => SignIn(
    loginApi: LoginApi.fromJson(json["LoginAPI"]),
  );

  Map<String, dynamic> toJson() => {
    "LoginAPI": loginApi.toJson(),
  };
}

class LoginApi {
  LoginApi({
    required this.errorCode,
    required this.result,
    required this.response,
  });

  String errorCode;
  String result;
  List<Response> response;

  factory LoginApi.fromJson(Map<String, dynamic> json) => LoginApi(
    errorCode: json["ErrorCode"],
    result: json["Result"],
    response: List<Response>.from(json["Response"].map((x) => Response.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "ErrorCode": errorCode,
    "Result": result,
    "Response": List<dynamic>.from(response.map((x) => x.toJson())),
  };
}

class Response {
  Response({
    required this.loginId,
    required this.memberType,
    required this.mobileNo,
    required this.fullName,
    required this.currentPoints,
    required this.enabled,
    required this.address,
    required this.firmName,
  });

  String loginId;
  String memberType;
  String mobileNo;
  String fullName;
  String currentPoints;
  String enabled;
  String address;
  String firmName;

  factory Response.fromJson(Map<String, dynamic> json) => Response(
    loginId: json["LoginId"],
    memberType: json["MemberType"],
    mobileNo: json["MobileNo"],
    fullName: json["FullName"],
    currentPoints: json["CurrentPoints"],
    enabled: json["Enabled"],
    address: json["Address"],
    firmName: json["FirmName"],
  );

  Map<String, dynamic> toJson() => {
    "LoginId": loginId,
    "MemberType": memberType,
    "MobileNo": mobileNo,
    "FullName": fullName,
    "CurrentPoints": currentPoints,
    "Enabled": enabled,
    "Address": address,
    "FirmName": firmName,
  };
}

class SignInRequestModel {
  String userName;
  String deviceId;
  String oSType;
  String password;


  SignInRequestModel({
    required this.userName, required this.deviceId,required this.oSType,required this.password
  });

  Map<String, String> toJson() {
    Map<String, String> map = {
      'UserName': userName.trim(),
      'Password': password.trim(),
      'DeviceId': deviceId.trim(),
      'OSType': oSType.trim(),
    };
    return map;
  }
}
