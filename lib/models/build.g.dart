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

Serializer<Build> _$buildSerializer = new _$BuildSerializer();

class _$BuildSerializer implements StructuredSerializer<Build> {
  @override
  final Iterable<Type> types = const [Build, _$Build];
  @override
  final String wireName = 'Build';

  @override
  Iterable serialize(Serializers serializers, Build object,
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
    ];

    return result;
  }

  @override
  Build deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuildBuilder();

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
      }
    }

    return result.build();
  }
}

class _$Build extends Build {
  @override
  final int id;
  @override
  final String state;
  @override
  final int duration;

  factory _$Build([void updates(BuildBuilder b)]) =>
      (new BuildBuilder()..update(updates)).build();

  _$Build._({this.id, this.state, this.duration}) : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('Build', 'id');
    }
    if (state == null) {
      throw new BuiltValueNullFieldError('Build', 'state');
    }
    if (duration == null) {
      throw new BuiltValueNullFieldError('Build', 'duration');
    }
  }

  @override
  Build rebuild(void updates(BuildBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  BuildBuilder toBuilder() => new BuildBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Build &&
        id == other.id &&
        state == other.state &&
        duration == other.duration;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, id.hashCode), state.hashCode), duration.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Build')
          ..add('id', id)
          ..add('state', state)
          ..add('duration', duration))
        .toString();
  }
}

class BuildBuilder implements Builder<Build, BuildBuilder> {
  _$Build _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _state;
  String get state => _$this._state;
  set state(String state) => _$this._state = state;

  int _duration;
  int get duration => _$this._duration;
  set duration(int duration) => _$this._duration = duration;

  BuildBuilder();

  BuildBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _state = _$v.state;
      _duration = _$v.duration;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Build other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Build;
  }

  @override
  void update(void updates(BuildBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Build build() {
    final _$result =
        _$v ?? new _$Build._(id: id, state: state, duration: duration);
    replace(_$result);
    return _$result;
  }
}
