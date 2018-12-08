import 'package:dio/dio.dart';
import 'package:built_value/serializer.dart';
import 'package:travy/api/response_models/serializers.dart';

class AuthCredentials {
  final String token;

  AuthCredentials({this.token});
}

class ApiClient {
  
  AuthCredentials credentials;

  var _dio = new Dio(
    Options(
      baseUrl: "https://api.travis-ci.org",
      connectTimeout: 5000,
      receiveTimeout: 5000,
      headers: {
        "Travis-API-Version" : 3
      }
    )
  );

  Future<dynamic> request(String endpoint) {
    
    var path = '/' + endpoint;

    if (credentials != null && credentials.token != null) {
      path += '/' + this.credentials.token;
    }

    Response response;

    _dio.get(path);

    return response.data;
  }

  List<T> deserializeList<T>(Serializer<T> serializer, map) {
    var list = List<dynamic>.from(map);
    return list.map((el) {
      return serializers.deserializeWith(serializer, el);
    }).toList();
  }

  T deserializeElement<T>(Serializer<T> serializer, map) {
    return serializers.deserializeWith(serializer, (map));
  }

}