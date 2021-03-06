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
      'repository',
      serializers.serialize(object.repository,
          specifiedType: const FullType(String)),
      'duration',
      serializers.serialize(object.duration,
          specifiedType: const FullType(int)),
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
        case 'repository':
          result.repository = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'duration':
          result.duration = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
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
  final String repository;
  @override
  final int duration;

  factory _$BuildModel([void updates(BuildModelBuilder b)]) =>
      (new BuildModelBuilder()..update(updates)).build();

  _$BuildModel._({this.id, this.state, this.repository, this.duration})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('BuildModel', 'id');
    }
    if (state == null) {
      throw new BuiltValueNullFieldError('BuildModel', 'state');
    }
    if (repository == null) {
      throw new BuiltValueNullFieldError('BuildModel', 'repository');
    }
    if (duration == null) {
      throw new BuiltValueNullFieldError('BuildModel', 'duration');
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
        repository == other.repository &&
        duration == other.duration;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, id.hashCode), state.hashCode), repository.hashCode),
        duration.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuildModel')
          ..add('id', id)
          ..add('state', state)
          ..add('repository', repository)
          ..add('duration', duration))
        .toString();
  }
}

class BuildModelBuilder implements Builder<BuildModel, BuildModelBuilder> {
  _$BuildModel _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _state;
  String get state => _$this._state;
  set state(String state) => _$this._state = state;

  String _repository;
  String get repository => _$this._repository;
  set repository(String repository) => _$this._repository = repository;

  int _duration;
  int get duration => _$this._duration;
  set duration(int duration) => _$this._duration = duration;

  BuildModelBuilder();

  BuildModelBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _state = _$v.state;
      _repository = _$v.repository;
      _duration = _$v.duration;
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
    final _$result = _$v ??
        new _$BuildModel._(
            id: id, state: state, repository: repository, duration: duration);
    replace(_$result);
    return _$result;
  }
}
