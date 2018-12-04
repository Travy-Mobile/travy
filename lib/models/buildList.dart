import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';

import 'package:travy/models/build.dart';

part 'buildList.g.dart';

abstract class BuildList implements Built<BuildList, BuildListBuilder> {
  static Serializer<BuildList> get serializer => _$buildListSerializer;

  List<BuildModel> get buildsList;

  BuildList._();
  factory BuildList([updates(BuildListBuilder b)]) = _$BuildList;
}