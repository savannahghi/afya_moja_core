// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'document.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Document _$DocumentFromJson(Map<String, dynamic> json) {
  return _Document.fromJson(json);
}

/// @nodoc
mixin _$Document {
  @JsonKey(name: 'ID')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'Document')
  DocumentData? get documentData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DocumentCopyWith<Document> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentCopyWith<$Res> {
  factory $DocumentCopyWith(Document value, $Res Function(Document) then) =
      _$DocumentCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'ID') int? id,
      @JsonKey(name: 'Document') DocumentData? documentData});

  $DocumentDataCopyWith<$Res>? get documentData;
}

/// @nodoc
class _$DocumentCopyWithImpl<$Res> implements $DocumentCopyWith<$Res> {
  _$DocumentCopyWithImpl(this._value, this._then);

  final Document _value;
  // ignore: unused_field
  final $Res Function(Document) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? documentData = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      documentData: documentData == freezed
          ? _value.documentData
          : documentData // ignore: cast_nullable_to_non_nullable
              as DocumentData?,
    ));
  }

  @override
  $DocumentDataCopyWith<$Res>? get documentData {
    if (_value.documentData == null) {
      return null;
    }

    return $DocumentDataCopyWith<$Res>(_value.documentData!, (value) {
      return _then(_value.copyWith(documentData: value));
    });
  }
}

/// @nodoc
abstract class _$$_DocumentCopyWith<$Res> implements $DocumentCopyWith<$Res> {
  factory _$$_DocumentCopyWith(
          _$_Document value, $Res Function(_$_Document) then) =
      __$$_DocumentCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'ID') int? id,
      @JsonKey(name: 'Document') DocumentData? documentData});

  @override
  $DocumentDataCopyWith<$Res>? get documentData;
}

/// @nodoc
class __$$_DocumentCopyWithImpl<$Res> extends _$DocumentCopyWithImpl<$Res>
    implements _$$_DocumentCopyWith<$Res> {
  __$$_DocumentCopyWithImpl(
      _$_Document _value, $Res Function(_$_Document) _then)
      : super(_value, (v) => _then(v as _$_Document));

  @override
  _$_Document get _value => super._value as _$_Document;

  @override
  $Res call({
    Object? id = freezed,
    Object? documentData = freezed,
  }) {
    return _then(_$_Document(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      documentData: documentData == freezed
          ? _value.documentData
          : documentData // ignore: cast_nullable_to_non_nullable
              as DocumentData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Document implements _Document {
  _$_Document(
      {@JsonKey(name: 'ID') this.id,
      @JsonKey(name: 'Document') this.documentData});

  factory _$_Document.fromJson(Map<String, dynamic> json) =>
      _$$_DocumentFromJson(json);

  @override
  @JsonKey(name: 'ID')
  final int? id;
  @override
  @JsonKey(name: 'Document')
  final DocumentData? documentData;

  @override
  String toString() {
    return 'Document(id: $id, documentData: $documentData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Document &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.documentData, documentData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(documentData));

  @JsonKey(ignore: true)
  @override
  _$$_DocumentCopyWith<_$_Document> get copyWith =>
      __$$_DocumentCopyWithImpl<_$_Document>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DocumentToJson(
      this,
    );
  }
}

abstract class _Document implements Document {
  factory _Document(
          {@JsonKey(name: 'ID') final int? id,
          @JsonKey(name: 'Document') final DocumentData? documentData}) =
      _$_Document;

  factory _Document.fromJson(Map<String, dynamic> json) = _$_Document.fromJson;

  @override
  @JsonKey(name: 'ID')
  int? get id;
  @override
  @JsonKey(name: 'Document')
  DocumentData? get documentData;
  @override
  @JsonKey(ignore: true)
  _$$_DocumentCopyWith<_$_Document> get copyWith =>
      throw _privateConstructorUsedError;
}

DocumentData _$DocumentDataFromJson(Map<String, dynamic> json) {
  return _DocumentData.fromJson(json);
}

/// @nodoc
mixin _$DocumentData {
  @JsonKey(name: 'ID')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'meta')
  DocumentMetaData? get documentMetaData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DocumentDataCopyWith<DocumentData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentDataCopyWith<$Res> {
  factory $DocumentDataCopyWith(
          DocumentData value, $Res Function(DocumentData) then) =
      _$DocumentDataCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'ID') int? id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'meta') DocumentMetaData? documentMetaData});

  $DocumentMetaDataCopyWith<$Res>? get documentMetaData;
}

/// @nodoc
class _$DocumentDataCopyWithImpl<$Res> implements $DocumentDataCopyWith<$Res> {
  _$DocumentDataCopyWithImpl(this._value, this._then);

  final DocumentData _value;
  // ignore: unused_field
  final $Res Function(DocumentData) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? documentMetaData = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      documentMetaData: documentMetaData == freezed
          ? _value.documentMetaData
          : documentMetaData // ignore: cast_nullable_to_non_nullable
              as DocumentMetaData?,
    ));
  }

  @override
  $DocumentMetaDataCopyWith<$Res>? get documentMetaData {
    if (_value.documentMetaData == null) {
      return null;
    }

    return $DocumentMetaDataCopyWith<$Res>(_value.documentMetaData!, (value) {
      return _then(_value.copyWith(documentMetaData: value));
    });
  }
}

/// @nodoc
abstract class _$$_DocumentDataCopyWith<$Res>
    implements $DocumentDataCopyWith<$Res> {
  factory _$$_DocumentDataCopyWith(
          _$_DocumentData value, $Res Function(_$_DocumentData) then) =
      __$$_DocumentDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'ID') int? id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'meta') DocumentMetaData? documentMetaData});

  @override
  $DocumentMetaDataCopyWith<$Res>? get documentMetaData;
}

/// @nodoc
class __$$_DocumentDataCopyWithImpl<$Res>
    extends _$DocumentDataCopyWithImpl<$Res>
    implements _$$_DocumentDataCopyWith<$Res> {
  __$$_DocumentDataCopyWithImpl(
      _$_DocumentData _value, $Res Function(_$_DocumentData) _then)
      : super(_value, (v) => _then(v as _$_DocumentData));

  @override
  _$_DocumentData get _value => super._value as _$_DocumentData;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? documentMetaData = freezed,
  }) {
    return _then(_$_DocumentData(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      documentMetaData: documentMetaData == freezed
          ? _value.documentMetaData
          : documentMetaData // ignore: cast_nullable_to_non_nullable
              as DocumentMetaData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DocumentData implements _DocumentData {
  _$_DocumentData(
      {@JsonKey(name: 'ID') this.id,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'meta') this.documentMetaData});

  factory _$_DocumentData.fromJson(Map<String, dynamic> json) =>
      _$$_DocumentDataFromJson(json);

  @override
  @JsonKey(name: 'ID')
  final int? id;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'meta')
  final DocumentMetaData? documentMetaData;

  @override
  String toString() {
    return 'DocumentData(id: $id, title: $title, documentMetaData: $documentMetaData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DocumentData &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.documentMetaData, documentMetaData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(documentMetaData));

  @JsonKey(ignore: true)
  @override
  _$$_DocumentDataCopyWith<_$_DocumentData> get copyWith =>
      __$$_DocumentDataCopyWithImpl<_$_DocumentData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DocumentDataToJson(
      this,
    );
  }
}

abstract class _DocumentData implements DocumentData {
  factory _DocumentData(
          {@JsonKey(name: 'ID') final int? id,
          @JsonKey(name: 'title') final String? title,
          @JsonKey(name: 'meta') final DocumentMetaData? documentMetaData}) =
      _$_DocumentData;

  factory _DocumentData.fromJson(Map<String, dynamic> json) =
      _$_DocumentData.fromJson;

  @override
  @JsonKey(name: 'ID')
  int? get id;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'meta')
  DocumentMetaData? get documentMetaData;
  @override
  @JsonKey(ignore: true)
  _$$_DocumentDataCopyWith<_$_DocumentData> get copyWith =>
      throw _privateConstructorUsedError;
}

DocumentMetaData _$DocumentMetaDataFromJson(Map<String, dynamic> json) {
  return _DocumentMetaData.fromJson(json);
}

/// @nodoc
mixin _$DocumentMetaData {
  @JsonKey(name: 'documentDownloadUrl')
  String? get documentDownloadUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DocumentMetaDataCopyWith<DocumentMetaData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentMetaDataCopyWith<$Res> {
  factory $DocumentMetaDataCopyWith(
          DocumentMetaData value, $Res Function(DocumentMetaData) then) =
      _$DocumentMetaDataCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'documentDownloadUrl') String? documentDownloadUrl});
}

/// @nodoc
class _$DocumentMetaDataCopyWithImpl<$Res>
    implements $DocumentMetaDataCopyWith<$Res> {
  _$DocumentMetaDataCopyWithImpl(this._value, this._then);

  final DocumentMetaData _value;
  // ignore: unused_field
  final $Res Function(DocumentMetaData) _then;

  @override
  $Res call({
    Object? documentDownloadUrl = freezed,
  }) {
    return _then(_value.copyWith(
      documentDownloadUrl: documentDownloadUrl == freezed
          ? _value.documentDownloadUrl
          : documentDownloadUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_DocumentMetaDataCopyWith<$Res>
    implements $DocumentMetaDataCopyWith<$Res> {
  factory _$$_DocumentMetaDataCopyWith(
          _$_DocumentMetaData value, $Res Function(_$_DocumentMetaData) then) =
      __$$_DocumentMetaDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'documentDownloadUrl') String? documentDownloadUrl});
}

/// @nodoc
class __$$_DocumentMetaDataCopyWithImpl<$Res>
    extends _$DocumentMetaDataCopyWithImpl<$Res>
    implements _$$_DocumentMetaDataCopyWith<$Res> {
  __$$_DocumentMetaDataCopyWithImpl(
      _$_DocumentMetaData _value, $Res Function(_$_DocumentMetaData) _then)
      : super(_value, (v) => _then(v as _$_DocumentMetaData));

  @override
  _$_DocumentMetaData get _value => super._value as _$_DocumentMetaData;

  @override
  $Res call({
    Object? documentDownloadUrl = freezed,
  }) {
    return _then(_$_DocumentMetaData(
      documentDownloadUrl: documentDownloadUrl == freezed
          ? _value.documentDownloadUrl
          : documentDownloadUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DocumentMetaData implements _DocumentMetaData {
  _$_DocumentMetaData(
      {@JsonKey(name: 'documentDownloadUrl') this.documentDownloadUrl});

  factory _$_DocumentMetaData.fromJson(Map<String, dynamic> json) =>
      _$$_DocumentMetaDataFromJson(json);

  @override
  @JsonKey(name: 'documentDownloadUrl')
  final String? documentDownloadUrl;

  @override
  String toString() {
    return 'DocumentMetaData(documentDownloadUrl: $documentDownloadUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DocumentMetaData &&
            const DeepCollectionEquality()
                .equals(other.documentDownloadUrl, documentDownloadUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(documentDownloadUrl));

  @JsonKey(ignore: true)
  @override
  _$$_DocumentMetaDataCopyWith<_$_DocumentMetaData> get copyWith =>
      __$$_DocumentMetaDataCopyWithImpl<_$_DocumentMetaData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DocumentMetaDataToJson(
      this,
    );
  }
}

abstract class _DocumentMetaData implements DocumentMetaData {
  factory _DocumentMetaData(
      {@JsonKey(name: 'documentDownloadUrl')
          final String? documentDownloadUrl}) = _$_DocumentMetaData;

  factory _DocumentMetaData.fromJson(Map<String, dynamic> json) =
      _$_DocumentMetaData.fromJson;

  @override
  @JsonKey(name: 'documentDownloadUrl')
  String? get documentDownloadUrl;
  @override
  @JsonKey(ignore: true)
  _$$_DocumentMetaDataCopyWith<_$_DocumentMetaData> get copyWith =>
      throw _privateConstructorUsedError;
}
