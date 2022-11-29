// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'feed_content.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FeedContent _$FeedContentFromJson(Map<String, dynamic> json) {
  return _FeedContent.fromJson(json);
}

/// @nodoc
mixin _$FeedContent {
  @JsonKey(name: 'getContent')
  FeedItems? get feedContent => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeedContentCopyWith<FeedContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedContentCopyWith<$Res> {
  factory $FeedContentCopyWith(
          FeedContent value, $Res Function(FeedContent) then) =
      _$FeedContentCopyWithImpl<$Res, FeedContent>;
  @useResult
  $Res call({@JsonKey(name: 'getContent') FeedItems? feedContent});

  $FeedItemsCopyWith<$Res>? get feedContent;
}

/// @nodoc
class _$FeedContentCopyWithImpl<$Res, $Val extends FeedContent>
    implements $FeedContentCopyWith<$Res> {
  _$FeedContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feedContent = freezed,
  }) {
    return _then(_value.copyWith(
      feedContent: freezed == feedContent
          ? _value.feedContent
          : feedContent // ignore: cast_nullable_to_non_nullable
              as FeedItems?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FeedItemsCopyWith<$Res>? get feedContent {
    if (_value.feedContent == null) {
      return null;
    }

    return $FeedItemsCopyWith<$Res>(_value.feedContent!, (value) {
      return _then(_value.copyWith(feedContent: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_FeedContentCopyWith<$Res>
    implements $FeedContentCopyWith<$Res> {
  factory _$$_FeedContentCopyWith(
          _$_FeedContent value, $Res Function(_$_FeedContent) then) =
      __$$_FeedContentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'getContent') FeedItems? feedContent});

  @override
  $FeedItemsCopyWith<$Res>? get feedContent;
}

/// @nodoc
class __$$_FeedContentCopyWithImpl<$Res>
    extends _$FeedContentCopyWithImpl<$Res, _$_FeedContent>
    implements _$$_FeedContentCopyWith<$Res> {
  __$$_FeedContentCopyWithImpl(
      _$_FeedContent _value, $Res Function(_$_FeedContent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feedContent = freezed,
  }) {
    return _then(_$_FeedContent(
      feedContent: freezed == feedContent
          ? _value.feedContent
          : feedContent // ignore: cast_nullable_to_non_nullable
              as FeedItems?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FeedContent implements _FeedContent {
  _$_FeedContent({@JsonKey(name: 'getContent') this.feedContent});

  factory _$_FeedContent.fromJson(Map<String, dynamic> json) =>
      _$$_FeedContentFromJson(json);

  @override
  @JsonKey(name: 'getContent')
  final FeedItems? feedContent;

  @override
  String toString() {
    return 'FeedContent(feedContent: $feedContent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FeedContent &&
            (identical(other.feedContent, feedContent) ||
                other.feedContent == feedContent));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, feedContent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FeedContentCopyWith<_$_FeedContent> get copyWith =>
      __$$_FeedContentCopyWithImpl<_$_FeedContent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FeedContentToJson(
      this,
    );
  }
}

abstract class _FeedContent implements FeedContent {
  factory _FeedContent(
          {@JsonKey(name: 'getContent') final FeedItems? feedContent}) =
      _$_FeedContent;

  factory _FeedContent.fromJson(Map<String, dynamic> json) =
      _$_FeedContent.fromJson;

  @override
  @JsonKey(name: 'getContent')
  FeedItems? get feedContent;
  @override
  @JsonKey(ignore: true)
  _$$_FeedContentCopyWith<_$_FeedContent> get copyWith =>
      throw _privateConstructorUsedError;
}
