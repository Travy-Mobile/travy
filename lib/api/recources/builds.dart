import 'package:travy/api/api.dart';
import 'package:built_collection/built_collection.dart';
import 'package:travy/models/models.dart';

class BuildsApi extends ApiResources {
  BuildsApi(ApiClient client) : super(client);

  Future<Result> getBuilds(int limit) async {
    var response = client.request('builds');

    return normalizeBuildsResponse(
      BuiltList.from(
        client.deserializeList(BuildResponse.serializer, response)
      )
    );
  }
}