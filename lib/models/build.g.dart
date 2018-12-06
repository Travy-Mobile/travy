// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'build.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line
// ignore_for_file: annotate_overrides
// ignore_for_file: avoid_annotating_with_dynamic
// ignore_for_file: avoid_catches_without_on_clauses
// ignore_for_file: avoid_returning_this
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: sort_constructors_first
// ignore_for_file: unnecessary_const
// ignore_for_file: unnecessary_new
// ignore_for_file: test_types_in_equals

Serializer<BuildModel> _$buildModelSerializer = new _$BuildModelSerializer();

class _$BuildModelSerializer implements StructuredSerializer<BuildModel> {
  @override
  final Iterable<Type> types = const [BuildModel, _$BuildModel];
  @override
  final String wireName = 'BuildModel';

  @override
  Iterable serialize(Serializers serializers, BuildModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'state',
      serializers.serialize(object.state,
          specifiedType: const FullType(String)),
      'duration',
      serializers.serialize(object.duration,
          specifiedType: const FullType(int)),
      'repository',
      serializers.serialize(object.state,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  BuildModel deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuildModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'state':
          result.state = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'duration':
          result.duration = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'repository':
          result.state = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$BuildModel extends BuildModel {
  @override
  final int id;
  @override
  final String state;
  @override
  final int duration;
  @override
  final String repository;

  factory _$BuildModel([void updates(BuildModelBuilder b)]) =>
      (new BuildModelBuilder()..update(updates)).build();

  _$BuildModel._({this.id, this.state, this.duration, this.repository}) : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('BuildModel', 'id');
    }
    if (state == null) {
      throw new BuiltValueNullFieldError('BuildModel', 'state');
    }
    if (duration == null) {
      throw new BuiltValueNullFieldError('BuildModel', 'duration');
    }

    if (repository == null) {
       throw new BuiltValueNullFieldError('BuildModel', 'repository');
    }
  }

  @override
  BuildModel rebuild(void updates(BuildModelBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  BuildModelBuilder toBuilder() => new BuildModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuildModel &&
        id == other.id &&
        state == other.state &&
        duration == other.duration &&
        repository == other.repository;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, id.hashCode), state.hashCode), duration.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuildModel')
          ..add('id', id)
          ..add('state', state)
          ..add('duration', duration)
          ..add('repository', repository))
        .toString();
  }

  @override
  // TODO: implement repository
  String get ddd => null;
  }

class BuildModelBuilder implements Builder<BuildModel, BuildModelBuilder> {
  _$BuildModel _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _state;
  String get state => _$this._state;
  set state(String state) => _$this._state = state;

  int _duration;
  int get duration => _$this._duration;
  set duration(int duration) => _$this._duration = duration;

  String _repository;
  String get repository => _$this._repository;
  set repository(String repository) => _$this._repository = repository;

  BuildModelBuilder();

  BuildModelBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _state = _$v.state;
      _duration = _$v.duration;
      _repository = _$v.repository;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuildModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuildModel;
  }

  @override
  void update(void updates(BuildModelBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$BuildModel build() {
    final _$result =
        _$v ?? new _$BuildModel._(id: id, state: state, duration: duration, repository: repository);
    replace(_$result);
    return _$result;
  }
}
