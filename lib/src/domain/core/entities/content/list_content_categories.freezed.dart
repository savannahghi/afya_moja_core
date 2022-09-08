// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'list_content_categories.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ListContentCategory _$ListContentCategoryFromJson(Map<String, dynamic> json) {
  return _ListContentCategory.fromJson(json);
}

/// @nodoc
mixin _$ListContentCategory {
  @JsonKey(name: 'listContentCategories')
  List<ContentCategory?>? get contentCategories =>
      throw _privateConstructorUsedError;
  bool? get errorFetchingContentCategories =>
      throw _privateConstructorUsedError;
  bool? get timeoutFetchingContentCategories =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListContentCategoryCopyWith<ListContentCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListContentCategoryCopyWith<$Res> {
  factory $ListContentCategoryCopyWith(
          ListContentCategory value, $Res Function(ListContentCategory) then) =
      _$ListContentCategoryCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'listContentCategories')
          List<ContentCategory?>? contentCategories,
      bool? errorFetchingContentCategories,
      bool? timeoutFetchingContentCategories});
}

/// @nodoc
class _$ListContentCategoryCopyWithImpl<$Res>
    implements $ListContentCategoryCopyWith<$Res> {
  _$ListContentCategoryCopyWithImpl(this._value, this._then);

  final ListContentCategory _value;
  // ignore: unused_field
  final $Res Function(ListContentCategory) _then;

  @override
  $Res call({
    Object? contentCategories = freezed,
    Object? errorFetchingContentCategories = freezed,
    Object? timeoutFetchingContentCategories = freezed,
  }) {
    return _then(_value.copyWith(
      contentCategories: contentCategories == freezed
          ? _value.contentCategories
          : contentCategories // ignore: cast_nullable_to_non_nullable
              as List<ContentCategory?>?,
      errorFetchingContentCategories: errorFetchingContentCategories == freezed
          ? _value.errorFetchingContentCategories
          : errorFetchingContentCategories // ignore: cast_nullable_to_non_nullable
              as bool?,
      timeoutFetchingContentCategories: timeoutFetchingContentCategories ==
              freezed
          ? _value.timeoutFetchingContentCategories
          : timeoutFetchingContentCategories // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$$_ListContentCategoryCopyWith<$Res>
    implements $ListContentCategoryCopyWith<$Res> {
  factory _$$_ListContentCategoryCopyWith(_$_ListContentCategory value,
          $Res Function(_$_ListContentCategory) then) =
      __$$_ListContentCategoryCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'listContentCategories')
          List<ContentCategory?>? contentCategories,
      bool? errorFetchingContentCategories,
      bool? timeoutFetchingContentCategories});
}

/// @nodoc
class __$$_ListContentCategoryCopyWithImpl<$Res>
    extends _$ListContentCategoryCopyWithImpl<$Res>
    implements _$$_ListContentCategoryCopyWith<$Res> {
  __$$_ListContentCategoryCopyWithImpl(_$_ListContentCategory _value,
      $Res Function(_$_ListContentCategory) _then)
      : super(_value, (v) => _then(v as _$_ListContentCategory));

  @override
  _$_ListContentCategory get _value => super._value as _$_ListContentCategory;

  @override
  $Res call({
    Object? contentCategories = freezed,
    Object? errorFetchingContentCategories = freezed,
    Object? timeoutFetchingContentCategories = freezed,
  }) {
    return _then(_$_ListContentCategory(
      contentCategories: contentCategories == freezed
          ? _value._contentCategories
          : contentCategories // ignore: cast_nullable_to_non_nullable
              as List<ContentCategory?>?,
      errorFetchingContentCategories: errorFetchingContentCategories == freezed
          ? _value.errorFetchingContentCategories
          : errorFetchingContentCategories // ignore: cast_nullable_to_non_nullable
              as bool?,
      timeoutFetchingContentCategories: timeoutFetchingContentCategories ==
              freezed
          ? _value.timeoutFetchingContentCategories
          : timeoutFetchingContentCategories // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ListContentCategory implements _ListContentCategory {
  _$_ListContentCategory(
      {@JsonKey(name: 'listContentCategories')
          final List<ContentCategory?>? contentCategories,
      this.errorFetchingContentCategories,
      this.timeoutFetchingContentCategories})
      : _contentCategories = contentCategories;

  factory _$_ListContentCategory.fromJson(Map<String, dynamic> json) =>
      _$$_ListContentCategoryFromJson(json);

  final List<ContentCategory?>? _contentCategories;
  @override
  @JsonKey(name: 'listContentCategories')
  List<ContentCategory?>? get contentCategories {
    final value = _contentCategories;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool? errorFetchingContentCategories;
  @override
  final bool? timeoutFetchingContentCategories;

  @override
  String toString() {
    return 'ListContentCategory(contentCategories: $contentCategories, errorFetchingContentCategories: $errorFetchingContentCategories, timeoutFetchingContentCategories: $timeoutFetchingContentCategories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListContentCategory &&
            const DeepCollectionEquality()
                .equals(other._contentCategories, _contentCategories) &&
            const DeepCollectionEquality().equals(
                other.errorFetchingContentCategories,
                errorFetchingContentCategories) &&
            const DeepCollectionEquality().equals(
                other.timeoutFetchingContentCategories,
                timeoutFetchingContentCategories));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_contentCategories),
      const DeepCollectionEquality().hash(errorFetchingContentCategories),
      const DeepCollectionEquality().hash(timeoutFetchingContentCategories));

  @JsonKey(ignore: true)
  @override
  _$$_ListContentCategoryCopyWith<_$_ListContentCategory> get copyWith =>
      __$$_ListContentCategoryCopyWithImpl<_$_ListContentCategory>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ListContentCategoryToJson(
      this,
    );
  }
}

abstract class _ListContentCategory implements ListContentCategory {
  factory _ListContentCategory(
      {@JsonKey(name: 'listContentCategories')
          final List<ContentCategory?>? contentCategories,
      final bool? errorFetchingContentCategories,
      final bool? timeoutFetchingContentCategories}) = _$_ListContentCategory;

  factory _ListContentCategory.fromJson(Map<String, dynamic> json) =
      _$_ListContentCategory.fromJson;

  @override
  @JsonKey(name: 'listContentCategories')
  List<ContentCategory?>? get contentCategories;
  @override
  bool? get errorFetchingContentCategories;
  @override
  bool? get timeoutFetchingContentCategories;
  @override
  @JsonKey(ignore: true)
  _$$_ListContentCategoryCopyWith<_$_ListContentCategory> get copyWith =>
      throw _privateConstructorUsedError;
}
