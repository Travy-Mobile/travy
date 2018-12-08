import 'package:travy/models/models.dart';
import 'package:travy/api/api.dart';

import 'package:built_collection/built_collection.dart';

class Result {  
  final Map result;

  Result({this.result});
}

Map<int, BuildModel> entryResponseListToMap(BuiltList<BuildResponse> entries) {
  var mappedEntries = entries.map((c) => BuildModel.mapFromResponse(c));
  return Map<int, BuildModel>.from(
      Map.fromIterable(mappedEntries, key: (v) => v.id, value: (v) => v));
}

Result normalizeBuildsResponse(BuiltList<BuildResponse> builds) {
  var entriesMap = entryResponseListToMap(builds);

  return Result(
      result: entriesMap
  );
}
