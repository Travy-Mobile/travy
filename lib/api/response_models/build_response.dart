import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:travy/api/api.dart';
import 'package:built_collection/built_collection.dart';

part 'build_response.g.dart';

abstract class BuildResponse implements Built<BuildResponse, BuildResponseBuilder> {
  factory BuildResponse([updates(BuildResponseBuilder b)]) = _$BuildResponse;

  int get id;

  String get state;

  String get repository;

  int get duration;

  BuildResponse._();
  static Serializer<BuildResponse> get serializer => _$buildResponseSerializer;
}