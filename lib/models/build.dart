import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';

part 'build.g.dart';

abstract class BuildModel implements Built<BuildModel, BuildModelBuilder> {

  static Serializer<BuildModel> get serializer => _$buildModelSerializer;

  int get id;

  String get state;

  String get repository;

  int get duration;

  BuildModel._();
  factory BuildModel([updates(BuildModelBuilder b)]) = _$BuildModel;
}