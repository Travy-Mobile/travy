import 'package:http/http.dart';
import 'package:travy/models/build.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';

class Api {
  
  Future<List<BuildModel>> fetchBuilds() async{
    String url = "https://api.travis-ci.org/builds";
    
    var response = await http.get(url, headers: {
      "Authorization": "token xxx",
      "Travis-API-Version": "3"
    });

    var decoded = json.decode(response.body);
  }

}

final api = Api();