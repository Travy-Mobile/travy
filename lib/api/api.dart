export 'recources/api_resources.dart';
export 'response_models/build_response.dart';
export 'client.dart';
export 'normalizers.dart';

import 'package:travy/models/build.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class Api {
  
  Future<List<BuildModel>> fetchBuilds(String token) async{
    var prefs = await SharedPreferences.getInstance();
    var token = prefs.getString("token");
    String url = "https://api.travis-ci.org/builds";
    
    var response = await http.get(url, headers: {
      "Authorization": "token ${token}",
      "Travis-API-Version": "3"
    });

    var decoded = json.decode(response.body);
  }

  logIn(String token) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("token", token);
  }
}

final api = Api();