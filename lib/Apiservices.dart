

import 'dart:convert';

import 'package:http/http.dart' as http;
class Apiservices {
  Future<loginresponse> logincall(Map<String,dynamic>param) async {
    var url = Uri.parse('http://flutter.noviindus.co.in/api/LoginApi');
    var response = await http.post(url,body:( {param}));
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');

    final data = jsonDecode(response.body);
    return loginresponse(token: data["token"], error: data["error"]);
  }
}
class loginresponse {
  final String? token;
  final String? error;
  loginresponse({this.token,this.error});
}