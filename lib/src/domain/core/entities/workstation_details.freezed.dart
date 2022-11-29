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
      _$WorkStationDetailsCopyWithImpl<$Res, WorkStationDetails>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Notifications') int? notifications,
      @JsonKey(name: 'Messages') int? messages,
      @JsonKey(name: 'Surveys') int? surveys,
      @JsonKey(name: 'Articles') int? articles,
      @JsonKey(name: 'ServiceRequests') int? serviceRequests});
}

/// @nodoc
class _$WorkStationDetailsCopyWithImpl<$Res, $Val extends WorkStationDetails>
    implements $WorkStationDetailsCopyWith<$Res> {
  _$WorkStationDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notifications = freezed,
    Object? messages = freezed,
    Object? surveys = freezed,
    Object? articles = freezed,
    Object? serviceRequests = freezed,
  }) {
    return _then(_value.copyWith(
      notifications: freezed == notifications
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as int?,
      messages: freezed == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as int?,
      surveys: freezed == surveys
          ? _value.surveys
          : surveys // ignore: cast_nullable_to_non_nullable
              as int?,
      articles: freezed == articles
          ? _value.articles
          : articles // ignore: cast_nullable_to_non_nullable
              as int?,
      serviceRequests: freezed == serviceRequests
          ? _value.serviceRequests
          : serviceRequests // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WorkStationDetailsCopyWith<$Res>
    implements $WorkStationDetailsCopyWith<$Res> {
  factory _$$_WorkStationDetailsCopyWith(_$_WorkStationDetails value,
          $Res Function(_$_WorkStationDetails) then) =
      __$$_WorkStationDetailsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Notifications') int? notifications,
      @JsonKey(name: 'Messages') int? messages,
      @JsonKey(name: 'Surveys') int? surveys,
      @JsonKey(name: 'Articles') int? articles,
      @JsonKey(name: 'ServiceRequests') int? serviceRequests});
}

/// @nodoc
class __$$_WorkStationDetailsCopyWithImpl<$Res>
    extends _$WorkStationDetailsCopyWithImpl<$Res, _$_WorkStationDetails>
    implements _$$_WorkStationDetailsCopyWith<$Res> {
  __$$_WorkStationDetailsCopyWithImpl(
      _$_WorkStationDetails _value, $Res Function(_$_WorkStationDetails) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notifications = freezed,
    Object? messages = freezed,
    Object? surveys = freezed,
    Object? articles = freezed,
    Object? serviceRequests = freezed,
  }) {
    return _then(_$_WorkStationDetails(
      notifications: freezed == notifications
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as int?,
      messages: freezed == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as int?,
      surveys: freezed == surveys
          ? _value.surveys
          : surveys // ignore: cast_nullable_to_non_nullable
              as int?,
      articles: freezed == articles
          ? _value.articles
          : articles // ignore: cast_nullable_to_non_nullable
              as int?,
      serviceRequests: freezed == serviceRequests
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
            (identical(other.notifications, notifications) ||
                other.notifications == notifications) &&
            (identical(other.messages, messages) ||
                other.messages == messages) &&
            (identical(other.surveys, surveys) || other.surveys == surveys) &&
            (identical(other.articles, articles) ||
                other.articles == articles) &&
            (identical(other.serviceRequests, serviceRequests) ||
                other.serviceRequests == serviceRequests));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, notifications, messages, surveys, articles, serviceRequests);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
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
