// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'faq_content.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FAQContent _$FAQContentFromJson(Map<String, dynamic> json) {
  return _FAQContent.fromJson(json);
}

/// @nodoc
mixin _$FAQContent {
  @JsonKey(name: 'getFAQs')
  FeedItems? get feedContent => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FAQContentCopyWith<FAQContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FAQContentCopyWith<$Res> {
  factory $FAQContentCopyWith(
          FAQContent value, $Res Function(FAQContent) then) =
      _$FAQContentCopyWithImpl<$Res, FAQContent>;
  @useResult
  $Res call({@JsonKey(name: 'getFAQs') FeedItems? feedContent});

  $FeedItemsCopyWith<$Res>? get feedContent;
}

/// @nodoc
class _$FAQContentCopyWithImpl<$Res, $Val extends FAQContent>
    implements $FAQContentCopyWith<$Res> {
  _$FAQContentCopyWithImpl(this._value, this._then);

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
abstract class _$$_FAQContentCopyWith<$Res>
    implements $FAQContentCopyWith<$Res> {
  factory _$$_FAQContentCopyWith(
          _$_FAQContent value, $Res Function(_$_FAQContent) then) =
      __$$_FAQContentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'getFAQs') FeedItems? feedContent});

  @override
  $FeedItemsCopyWith<$Res>? get feedContent;
}

/// @nodoc
class __$$_FAQContentCopyWithImpl<$Res>
    extends _$FAQContentCopyWithImpl<$Res, _$_FAQContent>
    implements _$$_FAQContentCopyWith<$Res> {
  __$$_FAQContentCopyWithImpl(
      _$_FAQContent _value, $Res Function(_$_FAQContent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feedContent = freezed,
  }) {
    return _then(_$_FAQContent(
      feedContent: freezed == feedContent
          ? _value.feedContent
          : feedContent // ignore: cast_nullable_to_non_nullable
              as FeedItems?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FAQContent implements _FAQContent {
  _$_FAQContent({@JsonKey(name: 'getFAQs') this.feedContent});

  factory _$_FAQContent.fromJson(Map<String, dynamic> json) =>
      _$$_FAQContentFromJson(json);

  @override
  @JsonKey(name: 'getFAQs')
  final FeedItems? feedContent;

  @override
  String toString() {
    return 'FAQContent(feedContent: $feedContent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FAQContent &&
            (identical(other.feedContent, feedContent) ||
                other.feedContent == feedContent));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, feedContent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FAQContentCopyWith<_$_FAQContent> get copyWith =>
      __$$_FAQContentCopyWithImpl<_$_FAQContent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FAQContentToJson(
      this,
    );
  }
}

abstract class _FAQContent implements FAQContent {
  factory _FAQContent(
      {@JsonKey(name: 'getFAQs') final FeedItems? feedContent}) = _$_FAQContent;

  factory _FAQContent.fromJson(Map<String, dynamic> json) =
      _$_FAQContent.fromJson;

  @override
  @JsonKey(name: 'getFAQs')
  FeedItems? get feedContent;
  @override
  @JsonKey(ignore: true)
  _$$_FAQContentCopyWith<_$_FAQContent> get copyWith =>
      throw _privateConstructorUsedError;
}
