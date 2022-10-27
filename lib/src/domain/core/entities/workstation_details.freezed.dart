// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'workstation_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WorkStationDetails _$WorkStationDetailsFromJson(Map<String, dynamic> json) {
  return _WorkStationDetails.fromJson(json);
}

/// @nodoc
mixin _$WorkStationDetails {
  @JsonKey(name: 'Notifications')
  int? get notifications => throw _privateConstructorUsedError;
  @JsonKey(name: 'Messages')
  int? get messages => throw _privateConstructorUsedError;
  @JsonKey(name: 'Surveys')
  int? get surveys => throw _privateConstructorUsedError;
  @JsonKey(name: 'Articles')
  int? get articles => throw _privateConstructorUsedError;
  @JsonKey(name: 'ServiceRequests')
  int? get serviceRequests => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorkStationDetailsCopyWith<WorkStationDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkStationDetailsCopyWith<$Res> {
  factory $WorkStationDetailsCopyWith(
          WorkStationDetails value, $Res Function(WorkStationDetails) then) =
      _$WorkStationDetailsCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'Notifications') int? notifications,
      @JsonKey(name: 'Messages') int? messages,
      @JsonKey(name: 'Surveys') int? surveys,
      @JsonKey(name: 'Articles') int? articles,
      @JsonKey(name: 'ServiceRequests') int? serviceRequests});
}

/// @nodoc
class _$WorkStationDetailsCopyWithImpl<$Res>
    implements $WorkStationDetailsCopyWith<$Res> {
  _$WorkStationDetailsCopyWithImpl(this._value, this._then);

  final WorkStationDetails _value;
  // ignore: unused_field
  final $Res Function(WorkStationDetails) _then;

  @override
  $Res call({
    Object? notifications = freezed,
    Object? messages = freezed,
    Object? surveys = freezed,
    Object? articles = freezed,
    Object? serviceRequests = freezed,
  }) {
    return _then(_value.copyWith(
      notifications: notifications == freezed
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as int?,
      messages: messages == freezed
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as int?,
      surveys: surveys == freezed
          ? _value.surveys
          : surveys // ignore: cast_nullable_to_non_nullable
              as int?,
      articles: articles == freezed
          ? _value.articles
          : articles // ignore: cast_nullable_to_non_nullable
              as int?,
      serviceRequests: serviceRequests == freezed
          ? _value.serviceRequests
          : serviceRequests // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_WorkStationDetailsCopyWith<$Res>
    implements $WorkStationDetailsCopyWith<$Res> {
  factory _$$_WorkStationDetailsCopyWith(_$_WorkStationDetails value,
          $Res Function(_$_WorkStationDetails) then) =
      __$$_WorkStationDetailsCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'Notifications') int? notifications,
      @JsonKey(name: 'Messages') int? messages,
      @JsonKey(name: 'Surveys') int? surveys,
      @JsonKey(name: 'Articles') int? articles,
      @JsonKey(name: 'ServiceRequests') int? serviceRequests});
}

/// @nodoc
class __$$_WorkStationDetailsCopyWithImpl<$Res>
    extends _$WorkStationDetailsCopyWithImpl<$Res>
    implements _$$_WorkStationDetailsCopyWith<$Res> {
  __$$_WorkStationDetailsCopyWithImpl(
      _$_WorkStationDetails _value, $Res Function(_$_WorkStationDetails) _then)
      : super(_value, (v) => _then(v as _$_WorkStationDetails));

  @override
  _$_WorkStationDetails get _value => super._value as _$_WorkStationDetails;

  @override
  $Res call({
    Object? notifications = freezed,
    Object? messages = freezed,
    Object? surveys = freezed,
    Object? articles = freezed,
    Object? serviceRequests = freezed,
  }) {
    return _then(_$_WorkStationDetails(
      notifications: notifications == freezed
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as int?,
      messages: messages == freezed
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as int?,
      surveys: surveys == freezed
          ? _value.surveys
          : surveys // ignore: cast_nullable_to_non_nullable
              as int?,
      articles: articles == freezed
          ? _value.articles
          : articles // ignore: cast_nullable_to_non_nullable
              as int?,
      serviceRequests: serviceRequests == freezed
          ? _value.serviceRequests
          : serviceRequests // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WorkStationDetails implements _WorkStationDetails {
  _$_WorkStationDetails(
      {@JsonKey(name: 'Notifications') this.notifications,
      @JsonKey(name: 'Messages') this.messages,
      @JsonKey(name: 'Surveys') this.surveys,
      @JsonKey(name: 'Articles') this.articles,
      @JsonKey(name: 'ServiceRequests') this.serviceRequests});

  factory _$_WorkStationDetails.fromJson(Map<String, dynamic> json) =>
      _$$_WorkStationDetailsFromJson(json);

  @override
  @JsonKey(name: 'Notifications')
  final int? notifications;
  @override
  @JsonKey(name: 'Messages')
  final int? messages;
  @override
  @JsonKey(name: 'Surveys')
  final int? surveys;
  @override
  @JsonKey(name: 'Articles')
  final int? articles;
  @override
  @JsonKey(name: 'ServiceRequests')
  final int? serviceRequests;

  @override
  String toString() {
    return 'WorkStationDetails(notifications: $notifications, messages: $messages, surveys: $surveys, articles: $articles, serviceRequests: $serviceRequests)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WorkStationDetails &&
            const DeepCollectionEquality()
                .equals(other.notifications, notifications) &&
            const DeepCollectionEquality().equals(other.messages, messages) &&
            const DeepCollectionEquality().equals(other.surveys, surveys) &&
            const DeepCollectionEquality().equals(other.articles, articles) &&
            const DeepCollectionEquality()
                .equals(other.serviceRequests, serviceRequests));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(notifications),
      const DeepCollectionEquality().hash(messages),
      const DeepCollectionEquality().hash(surveys),
      const DeepCollectionEquality().hash(articles),
      const DeepCollectionEquality().hash(serviceRequests));

  @JsonKey(ignore: true)
  @override
  _$$_WorkStationDetailsCopyWith<_$_WorkStationDetails> get copyWith =>
      __$$_WorkStationDetailsCopyWithImpl<_$_WorkStationDetails>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WorkStationDetailsToJson(
      this,
    );
  }
}

abstract class _WorkStationDetails implements WorkStationDetails {
  factory _WorkStationDetails(
          {@JsonKey(name: 'Notifications') final int? notifications,
          @JsonKey(name: 'Messages') final int? messages,
          @JsonKey(name: 'Surveys') final int? surveys,
          @JsonKey(name: 'Articles') final int? articles,
          @JsonKey(name: 'ServiceRequests') final int? serviceRequests}) =
      _$_WorkStationDetails;

  factory _WorkStationDetails.fromJson(Map<String, dynamic> json) =
      _$_WorkStationDetails.fromJson;

  @override
  @JsonKey(name: 'Notifications')
  int? get notifications;
  @override
  @JsonKey(name: 'Messages')
  int? get messages;
  @override
  @JsonKey(name: 'Surveys')
  int? get surveys;
  @override
  @JsonKey(name: 'Articles')
  int? get articles;
  @override
  @JsonKey(name: 'ServiceRequests')
  int? get serviceRequests;
  @override
  @JsonKey(ignore: true)
  _$$_WorkStationDetailsCopyWith<_$_WorkStationDetails> get copyWith =>
      throw _privateConstructorUsedError;
}
