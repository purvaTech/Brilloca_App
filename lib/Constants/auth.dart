import 'dart:convert';

String username = 'Looks';
String password = 'Looks@123';
String basicAuth = 'Basic ' + base64Encode(utf8.encode('$username:$password'));