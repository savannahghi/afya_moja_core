// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'feed_items.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FeedItems _$FeedItemsFromJson(Map<String, dynamic> json) {
  return _FeedItems.fromJson(json);
}

/// @nodoc
mixin _$FeedItems {
  @JsonKey(name: 'items')
  List<Content>? get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeedItemsCopyWith<FeedItems> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedItemsCopyWith<$Res> {
  factory $FeedItemsCopyWith(FeedItems value, $Res Function(FeedItems) then) =
      _$FeedItemsCopyWithImpl<$Res, FeedItems>;
  @useResult
  $Res call({@JsonKey(name: 'items') List<Content>? items});
}

/// @nodoc
class _$FeedItemsCopyWithImpl<$Res, $Val extends FeedItems>
    implements $FeedItemsCopyWith<$Res> {
  _$FeedItemsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Content>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FeedItemsCopyWith<$Res> implements $FeedItemsCopyWith<$Res> {
  factory _$$_FeedItemsCopyWith(
          _$_FeedItems value, $Res Function(_$_FeedItems) then) =
      __$$_FeedItemsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'items') List<Content>? items});
}

/// @nodoc
class __$$_FeedItemsCopyWithImpl<$Res>
    extends _$FeedItemsCopyWithImpl<$Res, _$_FeedItems>
    implements _$$_FeedItemsCopyWith<$Res> {
  __$$_FeedItemsCopyWithImpl(
      _$_FeedItems _value, $Res Function(_$_FeedItems) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = freezed,
  }) {
    return _then(_$_FeedItems(
      items: freezed == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Content>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FeedItems implements _FeedItems {
  _$_FeedItems({@JsonKey(name: 'items') final List<Content>? items})
      : _items = items;

  factory _$_FeedItems.fromJson(Map<String, dynamic> json) =>
      _$$_FeedItemsFromJson(json);

  final List<Content>? _items;
  @override
  @JsonKey(name: 'items')
  List<Content>? get items {
    final value = _items;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FeedItems(items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FeedItems &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FeedItemsCopyWith<_$_FeedItems> get copyWith =>
      __$$_FeedItemsCopyWithImpl<_$_FeedItems>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FeedItemsToJson(
      this,
    );
  }
}

abstract class _FeedItems implements FeedItems {
  factory _FeedItems({@JsonKey(name: 'items') final List<Content>? items}) =
      _$_FeedItems;

  factory _FeedItems.fromJson(Map<String, dynamic> json) =
      _$_FeedItems.fromJson;

  @override
  @JsonKey(name: 'items')
  List<Content>? get items;
  @override
  @JsonKey(ignore: true)
  _$$_FeedItemsCopyWith<_$_FeedItems> get copyWith =>
      throw _privateConstructorUsedError;
}
