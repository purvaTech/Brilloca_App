
import 'package:brilloca_app/Constants/auth.dart';
import 'package:brilloca_app/Constants/constants.dart';
import 'package:brilloca_app/Model/change_password_model.dart';
import 'package:brilloca_app/Model/forgot_password_model.dart';
import 'package:brilloca_app/Model/sign_in_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:developer' as developer;

class APIService {
  Map<String, String> headers = {
    'Content-Type': 'application/json',
    'Authorization': basicAuth
  };

  Future<SignIn?> signIn(SignInRequestModel requestModel) async {
    final response = await http.post(Uri.parse(Constants.URL_SIGNIN),
      body:jsonEncode(requestModel.toJson()), headers: headers
    );
    try {
      //developer.log(response.statusCode.toString());
      if (response.statusCode == 200) {
        return SignIn.fromJson(
          json.decode(response.body),
        );
      }
    } catch(e) {
      throw Exception('Failed to load data!');
    }
    return null;
  }


  Future<ChangePassword?> changePassword(ChangePasswordRequestModel requestModel) async {
    final response = await http.post(Uri.parse(Constants.URL_CHANGEPASSWORD),

         body:jsonEncode(requestModel.toJson()), headers: headers
    );
    try {
     // developer.log(response.statusCode.toString());
      if (response.statusCode == 200) {
        print(response.body);
        return ChangePassword.fromJson(
          json.decode(response.body),
        );
      }
    } catch(e) {
      throw Exception('Failed to load data!');
    }
    return null;
  }



  Future<ForgotPassword?> forgotPassword(ForgotPasswordRequestModel requestModel) async {
    final response = await http.post(Uri.parse(Constants.URL_FORGETPASSWORD),

        body:jsonEncode(requestModel.toJson()), headers: headers
    );
    try {
      // developer.log(response.statusCode.toString());
      if (response.statusCode == 200) {
        print(response.body);
        return ForgotPassword.fromJson(
          json.decode(response.body),
        );
      }
    } catch(e) {
      throw Exception('Failed to load data!');
    }
    return null;
  }



}