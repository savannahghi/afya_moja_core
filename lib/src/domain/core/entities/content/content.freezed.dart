// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'content.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Content _$ContentFromJson(Map<String, dynamic> json) {
  return _Content.fromJson(json);
}

/// @nodoc
mixin _$Content {
  @JsonKey(name: 'ID')
  int? get contentID => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'date')
  DateTime? get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'intro')
  String? get intro =>
      throw _privateConstructorUsedError; // TODO(abiud): move this to the Author object
  @JsonKey(name: 'authorName')
  String? get authorName =>
      throw _privateConstructorUsedError; // TODO(abiud): add when backend is ready
// @JsonKey(name: 'authorAvatar') String? authorAvatar,
  @JsonKey(name: 'author')
  Author? get author => throw _privateConstructorUsedError;
  @JsonKey(name: 'itemType')
  ContentType? get contentType =>
      throw _privateConstructorUsedError; // "ARTICLE"
  @JsonKey(name: 'timeEstimateSeconds')
  int? get estimate => throw _privateConstructorUsedError;
  @JsonKey(name: 'body')
  String? get body => throw _privateConstructorUsedError;
  @JsonKey(name: 'heroImageRendition')
  HeroImage? get heroImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'likeCount')
  int? get likeCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'bookmarkCount')
  int? get bookmarkCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'viewCount')
  int? get viewCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'shareCount')
  int? get shareCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'documents')
  List<Document>? get documents => throw _privateConstructorUsedError;
  @JsonKey(name: 'categoryDetails')
  List<ContentCategory>? get categories =>
      throw _privateConstructorUsedError; // TODO(abiud): add when backend is ready
// @JsonKey(name: 'isNew') bool? isNew,
  @JsonKey(name: 'tagNames')
  List<String?>? get tags => throw _privateConstructorUsedError;
  @JsonKey(name: 'meta')
  ContentMetadata? get metadata => throw _privateConstructorUsedError;
  @JsonKey(name: 'featuredMedia')
  List<FeaturedMedia?>? get featuredMedia =>
      throw _privateConstructorUsedError; // Internal trackers to know whether this user has performed any action on
// this content item
  @JsonKey(name: 'hasLiked', defaultValue: false)
  bool? get hasLiked => throw _privateConstructorUsedError;
  @JsonKey(name: 'hasSaved', defaultValue: false)
  bool? get hasSaved => throw _privateConstructorUsedError;
  @JsonKey(name: 'galleryImages')
  List<GalleryImage>? get galleryImages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContentCopyWith<Content> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentCopyWith<$Res> {
  factory $ContentCopyWith(Content value, $Res Function(Content) then) =
      _$ContentCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'ID') int? contentID,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'date') DateTime? date,
      @JsonKey(name: 'intro') String? intro,
      @JsonKey(name: 'authorName') String? authorName,
      @JsonKey(name: 'author') Author? author,
      @JsonKey(name: 'itemType') ContentType? contentType,
      @JsonKey(name: 'timeEstimateSeconds') int? estimate,
      @JsonKey(name: 'body') String? body,
      @JsonKey(name: 'heroImageRendition') HeroImage? heroImage,
      @JsonKey(name: 'likeCount') int? likeCount,
      @JsonKey(name: 'bookmarkCount') int? bookmarkCount,
      @JsonKey(name: 'viewCount') int? viewCount,
      @JsonKey(name: 'shareCount') int? shareCount,
      @JsonKey(name: 'documents') List<Document>? documents,
      @JsonKey(name: 'categoryDetails') List<ContentCategory>? categories,
      @JsonKey(name: 'tagNames') List<String?>? tags,
      @JsonKey(name: 'meta') ContentMetadata? metadata,
      @JsonKey(name: 'featuredMedia') List<FeaturedMedia?>? featuredMedia,
      @JsonKey(name: 'hasLiked', defaultValue: false) bool? hasLiked,
      @JsonKey(name: 'hasSaved', defaultValue: false) bool? hasSaved,
      @JsonKey(name: 'galleryImages') List<GalleryImage>? galleryImages});

  $AuthorCopyWith<$Res>? get author;
  $HeroImageCopyWith<$Res>? get heroImage;
  $ContentMetadataCopyWith<$Res>? get metadata;
}

/// @nodoc
class _$ContentCopyWithImpl<$Res> implements $ContentCopyWith<$Res> {
  _$ContentCopyWithImpl(this._value, this._then);

  final Content _value;
  // ignore: unused_field
  final $Res Function(Content) _then;

  @override
  $Res call({
    Object? contentID = freezed,
    Object? title = freezed,
    Object? date = freezed,
    Object? intro = freezed,
    Object? authorName = freezed,
    Object? author = freezed,
    Object? contentType = freezed,
    Object? estimate = freezed,
    Object? body = freezed,
    Object? heroImage = freezed,
    Object? likeCount = freezed,
    Object? bookmarkCount = freezed,
    Object? viewCount = freezed,
    Object? shareCount = freezed,
    Object? documents = freezed,
    Object? categories = freezed,
    Object? tags = freezed,
    Object? metadata = freezed,
    Object? featuredMedia = freezed,
    Object? hasLiked = freezed,
    Object? hasSaved = freezed,
    Object? galleryImages = freezed,
  }) {
    return _then(_value.copyWith(
      contentID: contentID == freezed
          ? _value.contentID
          : contentID // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      intro: intro == freezed
          ? _value.intro
          : intro // ignore: cast_nullable_to_non_nullable
              as String?,
      authorName: authorName == freezed
          ? _value.authorName
          : authorName // ignore: cast_nullable_to_non_nullable
              as String?,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as Author?,
      contentType: contentType == freezed
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as ContentType?,
      estimate: estimate == freezed
          ? _value.estimate
          : estimate // ignore: cast_nullable_to_non_nullable
              as int?,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      heroImage: heroImage == freezed
          ? _value.heroImage
          : heroImage // ignore: cast_nullable_to_non_nullable
              as HeroImage?,
      likeCount: likeCount == freezed
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int?,
      bookmarkCount: bookmarkCount == freezed
          ? _value.bookmarkCount
          : bookmarkCount // ignore: cast_nullable_to_non_nullable
              as int?,
      viewCount: viewCount == freezed
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as int?,
      shareCount: shareCount == freezed
          ? _value.shareCount
          : shareCount // ignore: cast_nullable_to_non_nullable
              as int?,
      documents: documents == freezed
          ? _value.documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<Document>?,
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<ContentCategory>?,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      metadata: metadata == freezed
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as ContentMetadata?,
      featuredMedia: featuredMedia == freezed
          ? _value.featuredMedia
          : featuredMedia // ignore: cast_nullable_to_non_nullable
              as List<FeaturedMedia?>?,
      hasLiked: hasLiked == freezed
          ? _value.hasLiked
          : hasLiked // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasSaved: hasSaved == freezed
          ? _value.hasSaved
          : hasSaved // ignore: cast_nullable_to_non_nullable
              as bool?,
      galleryImages: galleryImages == freezed
          ? _value.galleryImages
          : galleryImages // ignore: cast_nullable_to_non_nullable
              as List<GalleryImage>?,
    ));
  }

  @override
  $AuthorCopyWith<$Res>? get author {
    if (_value.author == null) {
      return null;
    }

    return $AuthorCopyWith<$Res>(_value.author!, (value) {
      return _then(_value.copyWith(author: value));
    });
  }

  @override
  $HeroImageCopyWith<$Res>? get heroImage {
    if (_value.heroImage == null) {
      return null;
    }

    return $HeroImageCopyWith<$Res>(_value.heroImage!, (value) {
      return _then(_value.copyWith(heroImage: value));
    });
  }

  @override
  $ContentMetadataCopyWith<$Res>? get metadata {
    if (_value.metadata == null) {
      return null;
    }

    return $ContentMetadataCopyWith<$Res>(_value.metadata!, (value) {
      return _then(_value.copyWith(metadata: value));
    });
  }
}

/// @nodoc
abstract class _$$_ContentCopyWith<$Res> implements $ContentCopyWith<$Res> {
  factory _$$_ContentCopyWith(
          _$_Content value, $Res Function(_$_Content) then) =
      __$$_ContentCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'ID') int? contentID,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'date') DateTime? date,
      @JsonKey(name: 'intro') String? intro,
      @JsonKey(name: 'authorName') String? authorName,
      @JsonKey(name: 'author') Author? author,
      @JsonKey(name: 'itemType') ContentType? contentType,
      @JsonKey(name: 'timeEstimateSeconds') int? estimate,
      @JsonKey(name: 'body') String? body,
      @JsonKey(name: 'heroImageRendition') HeroImage? heroImage,
      @JsonKey(name: 'likeCount') int? likeCount,
      @JsonKey(name: 'bookmarkCount') int? bookmarkCount,
      @JsonKey(name: 'viewCount') int? viewCount,
      @JsonKey(name: 'shareCount') int? shareCount,
      @JsonKey(name: 'documents') List<Document>? documents,
      @JsonKey(name: 'categoryDetails') List<ContentCategory>? categories,
      @JsonKey(name: 'tagNames') List<String?>? tags,
      @JsonKey(name: 'meta') ContentMetadata? metadata,
      @JsonKey(name: 'featuredMedia') List<FeaturedMedia?>? featuredMedia,
      @JsonKey(name: 'hasLiked', defaultValue: false) bool? hasLiked,
      @JsonKey(name: 'hasSaved', defaultValue: false) bool? hasSaved,
      @JsonKey(name: 'galleryImages') List<GalleryImage>? galleryImages});

  @override
  $AuthorCopyWith<$Res>? get author;
  @override
  $HeroImageCopyWith<$Res>? get heroImage;
  @override
  $ContentMetadataCopyWith<$Res>? get metadata;
}

/// @nodoc
class __$$_ContentCopyWithImpl<$Res> extends _$ContentCopyWithImpl<$Res>
    implements _$$_ContentCopyWith<$Res> {
  __$$_ContentCopyWithImpl(_$_Content _value, $Res Function(_$_Content) _then)
      : super(_value, (v) => _then(v as _$_Content));

  @override
  _$_Content get _value => super._value as _$_Content;

  @override
  $Res call({
    Object? contentID = freezed,
    Object? title = freezed,
    Object? date = freezed,
    Object? intro = freezed,
    Object? authorName = freezed,
    Object? author = freezed,
    Object? contentType = freezed,
    Object? estimate = freezed,
    Object? body = freezed,
    Object? heroImage = freezed,
    Object? likeCount = freezed,
    Object? bookmarkCount = freezed,
    Object? viewCount = freezed,
    Object? shareCount = freezed,
    Object? documents = freezed,
    Object? categories = freezed,
    Object? tags = freezed,
    Object? metadata = freezed,
    Object? featuredMedia = freezed,
    Object? hasLiked = freezed,
    Object? hasSaved = freezed,
    Object? galleryImages = freezed,
  }) {
    return _then(_$_Content(
      contentID: contentID == freezed
          ? _value.contentID
          : contentID // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      intro: intro == freezed
          ? _value.intro
          : intro // ignore: cast_nullable_to_non_nullable
              as String?,
      authorName: authorName == freezed
          ? _value.authorName
          : authorName // ignore: cast_nullable_to_non_nullable
              as String?,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as Author?,
      contentType: contentType == freezed
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as ContentType?,
      estimate: estimate == freezed
          ? _value.estimate
          : estimate // ignore: cast_nullable_to_non_nullable
              as int?,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      heroImage: heroImage == freezed
          ? _value.heroImage
          : heroImage // ignore: cast_nullable_to_non_nullable
              as HeroImage?,
      likeCount: likeCount == freezed
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int?,
      bookmarkCount: bookmarkCount == freezed
          ? _value.bookmarkCount
          : bookmarkCount // ignore: cast_nullable_to_non_nullable
              as int?,
      viewCount: viewCount == freezed
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as int?,
      shareCount: shareCount == freezed
          ? _value.shareCount
          : shareCount // ignore: cast_nullable_to_non_nullable
              as int?,
      documents: documents == freezed
          ? _value._documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<Document>?,
      categories: categories == freezed
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<ContentCategory>?,
      tags: tags == freezed
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      metadata: metadata == freezed
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as ContentMetadata?,
      featuredMedia: featuredMedia == freezed
          ? _value._featuredMedia
          : featuredMedia // ignore: cast_nullable_to_non_nullable
              as List<FeaturedMedia?>?,
      hasLiked: hasLiked == freezed
          ? _value.hasLiked
          : hasLiked // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasSaved: hasSaved == freezed
          ? _value.hasSaved
          : hasSaved // ignore: cast_nullable_to_non_nullable
              as bool?,
      galleryImages: galleryImages == freezed
          ? _value._galleryImages
          : galleryImages // ignore: cast_nullable_to_non_nullable
              as List<GalleryImage>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Content implements _Content {
  _$_Content(
      {@JsonKey(name: 'ID') this.contentID,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'date') this.date,
      @JsonKey(name: 'intro') this.intro,
      @JsonKey(name: 'authorName') this.authorName,
      @JsonKey(name: 'author') this.author,
      @JsonKey(name: 'itemType') this.contentType,
      @JsonKey(name: 'timeEstimateSeconds') this.estimate,
      @JsonKey(name: 'body') this.body,
      @JsonKey(name: 'heroImageRendition') this.heroImage,
      @JsonKey(name: 'likeCount') this.likeCount,
      @JsonKey(name: 'bookmarkCount') this.bookmarkCount,
      @JsonKey(name: 'viewCount') this.viewCount,
      @JsonKey(name: 'shareCount') this.shareCount,
      @JsonKey(name: 'documents') final List<Document>? documents,
      @JsonKey(name: 'categoryDetails') final List<ContentCategory>? categories,
      @JsonKey(name: 'tagNames') final List<String?>? tags,
      @JsonKey(name: 'meta') this.metadata,
      @JsonKey(name: 'featuredMedia') final List<FeaturedMedia?>? featuredMedia,
      @JsonKey(name: 'hasLiked', defaultValue: false) this.hasLiked,
      @JsonKey(name: 'hasSaved', defaultValue: false) this.hasSaved,
      @JsonKey(name: 'galleryImages') final List<GalleryImage>? galleryImages})
      : _documents = documents,
        _categories = categories,
        _tags = tags,
        _featuredMedia = featuredMedia,
        _galleryImages = galleryImages;

  factory _$_Content.fromJson(Map<String, dynamic> json) =>
      _$$_ContentFromJson(json);

  @override
  @JsonKey(name: 'ID')
  final int? contentID;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'date')
  final DateTime? date;
  @override
  @JsonKey(name: 'intro')
  final String? intro;
// TODO(abiud): move this to the Author object
  @override
  @JsonKey(name: 'authorName')
  final String? authorName;
// TODO(abiud): add when backend is ready
// @JsonKey(name: 'authorAvatar') String? authorAvatar,
  @override
  @JsonKey(name: 'author')
  final Author? author;
  @override
  @JsonKey(name: 'itemType')
  final ContentType? contentType;
// "ARTICLE"
  @override
  @JsonKey(name: 'timeEstimateSeconds')
  final int? estimate;
  @override
  @JsonKey(name: 'body')
  final String? body;
  @override
  @JsonKey(name: 'heroImageRendition')
  final HeroImage? heroImage;
  @override
  @JsonKey(name: 'likeCount')
  final int? likeCount;
  @override
  @JsonKey(name: 'bookmarkCount')
  final int? bookmarkCount;
  @override
  @JsonKey(name: 'viewCount')
  final int? viewCount;
  @override
  @JsonKey(name: 'shareCount')
  final int? shareCount;
  final List<Document>? _documents;
  @override
  @JsonKey(name: 'documents')
  List<Document>? get documents {
    final value = _documents;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ContentCategory>? _categories;
  @override
  @JsonKey(name: 'categoryDetails')
  List<ContentCategory>? get categories {
    final value = _categories;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

// TODO(abiud): add when backend is ready
// @JsonKey(name: 'isNew') bool? isNew,
  final List<String?>? _tags;
// TODO(abiud): add when backend is ready
// @JsonKey(name: 'isNew') bool? isNew,
  @override
  @JsonKey(name: 'tagNames')
  List<String?>? get tags {
    final value = _tags;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'meta')
  final ContentMetadata? metadata;
  final List<FeaturedMedia?>? _featuredMedia;
  @override
  @JsonKey(name: 'featuredMedia')
  List<FeaturedMedia?>? get featuredMedia {
    final value = _featuredMedia;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

// Internal trackers to know whether this user has performed any action on
// this content item
  @override
  @JsonKey(name: 'hasLiked', defaultValue: false)
  final bool? hasLiked;
  @override
  @JsonKey(name: 'hasSaved', defaultValue: false)
  final bool? hasSaved;
  final List<GalleryImage>? _galleryImages;
  @override
  @JsonKey(name: 'galleryImages')
  List<GalleryImage>? get galleryImages {
    final value = _galleryImages;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Content(contentID: $contentID, title: $title, date: $date, intro: $intro, authorName: $authorName, author: $author, contentType: $contentType, estimate: $estimate, body: $body, heroImage: $heroImage, likeCount: $likeCount, bookmarkCount: $bookmarkCount, viewCount: $viewCount, shareCount: $shareCount, documents: $documents, categories: $categories, tags: $tags, metadata: $metadata, featuredMedia: $featuredMedia, hasLiked: $hasLiked, hasSaved: $hasSaved, galleryImages: $galleryImages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Content &&
            const DeepCollectionEquality().equals(other.contentID, contentID) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.intro, intro) &&
            const DeepCollectionEquality()
                .equals(other.authorName, authorName) &&
            const DeepCollectionEquality().equals(other.author, author) &&
            const DeepCollectionEquality()
                .equals(other.contentType, contentType) &&
            const DeepCollectionEquality().equals(other.estimate, estimate) &&
            const DeepCollectionEquality().equals(other.body, body) &&
            const DeepCollectionEquality().equals(other.heroImage, heroImage) &&
            const DeepCollectionEquality().equals(other.likeCount, likeCount) &&
            const DeepCollectionEquality()
                .equals(other.bookmarkCount, bookmarkCount) &&
            const DeepCollectionEquality().equals(other.viewCount, viewCount) &&
            const DeepCollectionEquality()
                .equals(other.shareCount, shareCount) &&
            const DeepCollectionEquality()
                .equals(other._documents, _documents) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality().equals(other.metadata, metadata) &&
            const DeepCollectionEquality()
                .equals(other._featuredMedia, _featuredMedia) &&
            const DeepCollectionEquality().equals(other.hasLiked, hasLiked) &&
            const DeepCollectionEquality().equals(other.hasSaved, hasSaved) &&
            const DeepCollectionEquality()
                .equals(other._galleryImages, _galleryImages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(contentID),
        const DeepCollectionEquality().hash(title),
        const DeepCollectionEquality().hash(date),
        const DeepCollectionEquality().hash(intro),
        const DeepCollectionEquality().hash(authorName),
        const DeepCollectionEquality().hash(author),
        const DeepCollectionEquality().hash(contentType),
        const DeepCollectionEquality().hash(estimate),
        const DeepCollectionEquality().hash(body),
        const DeepCollectionEquality().hash(heroImage),
        const DeepCollectionEquality().hash(likeCount),
        const DeepCollectionEquality().hash(bookmarkCount),
        const DeepCollectionEquality().hash(viewCount),
        const DeepCollectionEquality().hash(shareCount),
        const DeepCollectionEquality().hash(_documents),
        const DeepCollectionEquality().hash(_categories),
        const DeepCollectionEquality().hash(_tags),
        const DeepCollectionEquality().hash(metadata),
        const DeepCollectionEquality().hash(_featuredMedia),
        const DeepCollectionEquality().hash(hasLiked),
        const DeepCollectionEquality().hash(hasSaved),
        const DeepCollectionEquality().hash(_galleryImages)
      ]);

  @JsonKey(ignore: true)
  @override
  _$$_ContentCopyWith<_$_Content> get copyWith =>
      __$$_ContentCopyWithImpl<_$_Content>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContentToJson(
      this,
    );
  }
}

abstract class _Content implements Content {
  factory _Content(
      {@JsonKey(name: 'ID')
          final int? contentID,
      @JsonKey(name: 'title')
          final String? title,
      @JsonKey(name: 'date')
          final DateTime? date,
      @JsonKey(name: 'intro')
          final String? intro,
      @JsonKey(name: 'authorName')
          final String? authorName,
      @JsonKey(name: 'author')
          final Author? author,
      @JsonKey(name: 'itemType')
          final ContentType? contentType,
      @JsonKey(name: 'timeEstimateSeconds')
          final int? estimate,
      @JsonKey(name: 'body')
          final String? body,
      @JsonKey(name: 'heroImageRendition')
          final HeroImage? heroImage,
      @JsonKey(name: 'likeCount')
          final int? likeCount,
      @JsonKey(name: 'bookmarkCount')
          final int? bookmarkCount,
      @JsonKey(name: 'viewCount')
          final int? viewCount,
      @JsonKey(name: 'shareCount')
          final int? shareCount,
      @JsonKey(name: 'documents')
          final List<Document>? documents,
      @JsonKey(name: 'categoryDetails')
          final List<ContentCategory>? categories,
      @JsonKey(name: 'tagNames')
          final List<String?>? tags,
      @JsonKey(name: 'meta')
          final ContentMetadata? metadata,
      @JsonKey(name: 'featuredMedia')
          final List<FeaturedMedia?>? featuredMedia,
      @JsonKey(name: 'hasLiked', defaultValue: false)
          final bool? hasLiked,
      @JsonKey(name: 'hasSaved', defaultValue: false)
          final bool? hasSaved,
      @JsonKey(name: 'galleryImages')
          final List<GalleryImage>? galleryImages}) = _$_Content;

  factory _Content.fromJson(Map<String, dynamic> json) = _$_Content.fromJson;

  @override
  @JsonKey(name: 'ID')
  int? get contentID;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'date')
  DateTime? get date;
  @override
  @JsonKey(name: 'intro')
  String? get intro;
  @override // TODO(abiud): move this to the Author object
  @JsonKey(name: 'authorName')
  String? get authorName;
  @override // TODO(abiud): add when backend is ready
// @JsonKey(name: 'authorAvatar') String? authorAvatar,
  @JsonKey(name: 'author')
  Author? get author;
  @override
  @JsonKey(name: 'itemType')
  ContentType? get contentType;
  @override // "ARTICLE"
  @JsonKey(name: 'timeEstimateSeconds')
  int? get estimate;
  @override
  @JsonKey(name: 'body')
  String? get body;
  @override
  @JsonKey(name: 'heroImageRendition')
  HeroImage? get heroImage;
  @override
  @JsonKey(name: 'likeCount')
  int? get likeCount;
  @override
  @JsonKey(name: 'bookmarkCount')
  int? get bookmarkCount;
  @override
  @JsonKey(name: 'viewCount')
  int? get viewCount;
  @override
  @JsonKey(name: 'shareCount')
  int? get shareCount;
  @override
  @JsonKey(name: 'documents')
  List<Document>? get documents;
  @override
  @JsonKey(name: 'categoryDetails')
  List<ContentCategory>? get categories;
  @override // TODO(abiud): add when backend is ready
// @JsonKey(name: 'isNew') bool? isNew,
  @JsonKey(name: 'tagNames')
  List<String?>? get tags;
  @override
  @JsonKey(name: 'meta')
  ContentMetadata? get metadata;
  @override
  @JsonKey(name: 'featuredMedia')
  List<FeaturedMedia?>? get featuredMedia;
  @override // Internal trackers to know whether this user has performed any action on
// this content item
  @JsonKey(name: 'hasLiked', defaultValue: false)
  bool? get hasLiked;
  @override
  @JsonKey(name: 'hasSaved', defaultValue: false)
  bool? get hasSaved;
  @override
  @JsonKey(name: 'galleryImages')
  List<GalleryImage>? get galleryImages;
  @override
  @JsonKey(ignore: true)
  _$$_ContentCopyWith<_$_Content> get copyWith =>
      throw _privateConstructorUsedError;
}
