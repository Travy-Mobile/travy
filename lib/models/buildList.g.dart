// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'buildList.dart';

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

Serializer<BuildList> _$buildListSerializer = new _$BuildListSerializer();

class _$BuildListSerializer implements StructuredSerializer<BuildList> {
  @override
  final Iterable<Type> types = const [BuildList, _$BuildList];
  @override
  final String wireName = 'BuildList';

  @override
  Iterable serialize(Serializers serializers, BuildList object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'buildsList',
      serializers.serialize(object.buildsList,
          specifiedType:
              const FullType(List, const [const FullType(BuildModel)])),
    ];

    return result;
  }

  @override
  BuildList deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuildListBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'buildsList':
          result.buildsList = serializers.deserialize(value,
                  specifiedType:
                      const FullType(List, const [const FullType(BuildModel)]))
              as List<BuildModel>;
          break;
      }
    }

    return result.build();
  }
}

class _$BuildList extends BuildList {
  @override
  final List<BuildModel> buildsList;

  factory _$BuildList([void updates(BuildListBuilder b)]) =>
      (new BuildListBuilder()..update(updates)).build();

  _$BuildList._({this.buildsList}) : super._() {
    if (buildsList == null) {
      throw new BuiltValueNullFieldError('BuildList', 'buildsList');
    }
  }

  @override
  BuildList rebuild(void updates(BuildListBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  BuildListBuilder toBuilder() => new BuildListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuildList && buildsList == other.buildsList;
  }

  @override
  int get hashCode {
    return $jf($jc(0, buildsList.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuildList')
          ..add('buildsList', buildsList))
        .toString();
  }
}

class BuildListBuilder implements Builder<BuildList, BuildListBuilder> {
  _$BuildList _$v;

  List<BuildModel> _buildsList;
  List<BuildModel> get buildsList => _$this._buildsList;
  set buildsList(List<BuildModel> buildsList) =>
      _$this._buildsList = buildsList;

  BuildListBuilder();

  BuildListBuilder get _$this {
    if (_$v != null) {
      _buildsList = _$v.buildsList;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuildList other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuildList;
  }

  @override
  void update(void updates(BuildListBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$BuildList build() {
    final _$result = _$v ?? new _$BuildList._(buildsList: buildsList);
    replace(_$result);
    return _$result;
  }
}
