import 'dart:convert';

import 'package:techlite/constant/api_constant.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  static const APIURL =
      '${Constant.BASEURL}/${Constant.APPID}/${Constant.APIKEY}';

  Future login(email, password) async {
    var url = APIURL + '/user/login';
    Object data = json.encode({
      {
        "login": email,
        "password": password,
      }
    }.toString());

    http.Response response = await http.post(url, body: data);
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else
      return false;
  }

  Future register(String name, String email, String password) async {
    var url = APIURL + '/user/register';
    print(url);
    Object data = json.encode({
      {
        "name": name,
        "email": email,
        "password": password,
      }
    }.toString());

    http.Response response = await http.post(url, body: data);
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else
      print(response.body);
    return false;
  }
}
