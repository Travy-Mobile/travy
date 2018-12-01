import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';

part 'build.g.dart';

abstract class Build implements Built<Build, BuildBuilder> {
  static Serializer<Build> get serializer => _$buildSerializer;

  int get id;

  String get state;

  int get duration;

  Build._();
  factory Build([updates(BuildBuilder b)]) = _$Build;
}