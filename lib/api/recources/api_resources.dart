import '../api.dart';

abstract class ApiResources {
  ApiClient _client;
  ApiClient get client => _client;

  ApiResources(ApiClient client) {
    this._client = client;
  }
}