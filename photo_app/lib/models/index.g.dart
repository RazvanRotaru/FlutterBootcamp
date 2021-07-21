// GENERATED CODE - DO NOT MODIFY BY HAND

part of models;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Photo> _$photoSerializer = new _$PhotoSerializer();
Serializer<Url> _$urlSerializer = new _$UrlSerializer();
Serializer<Tag> _$tagSerializer = new _$TagSerializer();

class _$PhotoSerializer implements StructuredSerializer<Photo> {
  @override
  final Iterable<Type> types = const [Photo, _$Photo];
  @override
  final String wireName = 'Photo';

  @override
  Iterable<Object?> serialize(Serializers serializers, Photo object, {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'width',
      serializers.serialize(object.width, specifiedType: const FullType(num)),
      'height',
      serializers.serialize(object.height, specifiedType: const FullType(num)),
      'likes',
      serializers.serialize(object.likes, specifiedType: const FullType(num)),
      'liked_by_user',
      serializers.serialize(object.likedByUser, specifiedType: const FullType(bool)),
      'urls',
      serializers.serialize(object.urls, specifiedType: const FullType(Url)),
      'tags',
      serializers.serialize(object.tags, specifiedType: const FullType(BuiltList, const [const FullType(Tag)])),
    ];
    Object? value;
    value = object.description;
    if (value != null) {
      result..add('description')..add(serializers.serialize(value, specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Photo deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PhotoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'width':
          result.width = serializers.deserialize(value, specifiedType: const FullType(num)) as num;
          break;
        case 'height':
          result.height = serializers.deserialize(value, specifiedType: const FullType(num)) as num;
          break;
        case 'description':
          result.description = serializers.deserialize(value, specifiedType: const FullType(String)) as String?;
          break;
        case 'likes':
          result.likes = serializers.deserialize(value, specifiedType: const FullType(num)) as num;
          break;
        case 'liked_by_user':
          result.likedByUser = serializers.deserialize(value, specifiedType: const FullType(bool)) as bool;
          break;
        case 'urls':
          result.urls.replace(serializers.deserialize(value, specifiedType: const FullType(Url))! as Url);
          break;
        case 'tags':
          result.tags.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [const FullType(Tag)]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$UrlSerializer implements StructuredSerializer<Url> {
  @override
  final Iterable<Type> types = const [Url, _$Url];
  @override
  final String wireName = 'Url';

  @override
  Iterable<Object?> serialize(Serializers serializers, Url object, {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'full',
      serializers.serialize(object.full, specifiedType: const FullType(String)),
      'regular',
      serializers.serialize(object.regular, specifiedType: const FullType(String)),
      'thumb',
      serializers.serialize(object.thumb, specifiedType: const FullType(String)),
      'raw',
      serializers.serialize(object.raw, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Url deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UrlBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'full':
          result.full = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'regular':
          result.regular = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'thumb':
          result.thumb = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'raw':
          result.raw = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$TagSerializer implements StructuredSerializer<Tag> {
  @override
  final Iterable<Type> types = const [Tag, _$Tag];
  @override
  final String wireName = 'Tag';

  @override
  Iterable<Object?> serialize(Serializers serializers, Tag object, {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'type',
      serializers.serialize(object.type, specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Tag deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TagBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'type':
          result.type = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$AppState extends AppState {
  @override
  final BuiltList<Photo> photos;
  @override
  final int currentPage;
  @override
  final String currentCategory;
  @override
  final bool isLoading;
  @override
  final String? errorMessage;

  factory _$AppState([void Function(AppStateBuilder)? updates]) => (new AppStateBuilder()..update(updates)).build();

  _$AppState._(
      {required this.photos,
      required this.currentPage,
      required this.currentCategory,
      required this.isLoading,
      this.errorMessage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(photos, 'AppState', 'photos');
    BuiltValueNullFieldError.checkNotNull(currentPage, 'AppState', 'currentPage');
    BuiltValueNullFieldError.checkNotNull(currentCategory, 'AppState', 'currentCategory');
    BuiltValueNullFieldError.checkNotNull(isLoading, 'AppState', 'isLoading');
  }

  @override
  AppState rebuild(void Function(AppStateBuilder) updates) => (toBuilder()..update(updates)).build();

  @override
  AppStateBuilder toBuilder() => new AppStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppState &&
        photos == other.photos &&
        currentPage == other.currentPage &&
        currentCategory == other.currentCategory &&
        isLoading == other.isLoading &&
        errorMessage == other.errorMessage;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, photos.hashCode), currentPage.hashCode), currentCategory.hashCode), isLoading.hashCode),
        errorMessage.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppState')
          ..add('photos', photos)
          ..add('currentPage', currentPage)
          ..add('currentCategory', currentCategory)
          ..add('isLoading', isLoading)
          ..add('errorMessage', errorMessage))
        .toString();
  }
}

class AppStateBuilder implements Builder<AppState, AppStateBuilder> {
  _$AppState? _$v;

  ListBuilder<Photo>? _photos;
  ListBuilder<Photo> get photos => _$this._photos ??= new ListBuilder<Photo>();
  set photos(ListBuilder<Photo>? photos) => _$this._photos = photos;

  int? _currentPage;
  int? get currentPage => _$this._currentPage;
  set currentPage(int? currentPage) => _$this._currentPage = currentPage;

  String? _currentCategory;
  String? get currentCategory => _$this._currentCategory;
  set currentCategory(String? currentCategory) => _$this._currentCategory = currentCategory;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  AppStateBuilder();

  AppStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _photos = $v.photos.toBuilder();
      _currentPage = $v.currentPage;
      _currentCategory = $v.currentCategory;
      _isLoading = $v.isLoading;
      _errorMessage = $v.errorMessage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AppState;
  }

  @override
  void update(void Function(AppStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AppState build() {
    _$AppState _$result;
    try {
      _$result = _$v ??
          new _$AppState._(
              photos: photos.build(),
              currentPage: BuiltValueNullFieldError.checkNotNull(currentPage, 'AppState', 'currentPage'),
              currentCategory: BuiltValueNullFieldError.checkNotNull(currentCategory, 'AppState', 'currentCategory'),
              isLoading: BuiltValueNullFieldError.checkNotNull(isLoading, 'AppState', 'isLoading'),
              errorMessage: errorMessage);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'photos';
        photos.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError('AppState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Photo extends Photo {
  @override
  final String id;
  @override
  final num width;
  @override
  final num height;
  @override
  final String? description;
  @override
  final num likes;
  @override
  final bool likedByUser;
  @override
  final Url urls;
  @override
  final BuiltList<Tag> tags;

  factory _$Photo([void Function(PhotoBuilder)? updates]) => (new PhotoBuilder()..update(updates)).build();

  _$Photo._(
      {required this.id,
      required this.width,
      required this.height,
      this.description,
      required this.likes,
      required this.likedByUser,
      required this.urls,
      required this.tags})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'Photo', 'id');
    BuiltValueNullFieldError.checkNotNull(width, 'Photo', 'width');
    BuiltValueNullFieldError.checkNotNull(height, 'Photo', 'height');
    BuiltValueNullFieldError.checkNotNull(likes, 'Photo', 'likes');
    BuiltValueNullFieldError.checkNotNull(likedByUser, 'Photo', 'likedByUser');
    BuiltValueNullFieldError.checkNotNull(urls, 'Photo', 'urls');
    BuiltValueNullFieldError.checkNotNull(tags, 'Photo', 'tags');
  }

  @override
  Photo rebuild(void Function(PhotoBuilder) updates) => (toBuilder()..update(updates)).build();

  @override
  PhotoBuilder toBuilder() => new PhotoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Photo &&
        id == other.id &&
        width == other.width &&
        height == other.height &&
        description == other.description &&
        likes == other.likes &&
        likedByUser == other.likedByUser &&
        urls == other.urls &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc($jc($jc(0, id.hashCode), width.hashCode), height.hashCode), description.hashCode),
                    likes.hashCode),
                likedByUser.hashCode),
            urls.hashCode),
        tags.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Photo')
          ..add('id', id)
          ..add('width', width)
          ..add('height', height)
          ..add('description', description)
          ..add('likes', likes)
          ..add('likedByUser', likedByUser)
          ..add('urls', urls)
          ..add('tags', tags))
        .toString();
  }
}

class PhotoBuilder implements Builder<Photo, PhotoBuilder> {
  _$Photo? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  num? _width;
  num? get width => _$this._width;
  set width(num? width) => _$this._width = width;

  num? _height;
  num? get height => _$this._height;
  set height(num? height) => _$this._height = height;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  num? _likes;
  num? get likes => _$this._likes;
  set likes(num? likes) => _$this._likes = likes;

  bool? _likedByUser;
  bool? get likedByUser => _$this._likedByUser;
  set likedByUser(bool? likedByUser) => _$this._likedByUser = likedByUser;

  UrlBuilder? _urls;
  UrlBuilder get urls => _$this._urls ??= new UrlBuilder();
  set urls(UrlBuilder? urls) => _$this._urls = urls;

  ListBuilder<Tag>? _tags;
  ListBuilder<Tag> get tags => _$this._tags ??= new ListBuilder<Tag>();
  set tags(ListBuilder<Tag>? tags) => _$this._tags = tags;

  PhotoBuilder();

  PhotoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _width = $v.width;
      _height = $v.height;
      _description = $v.description;
      _likes = $v.likes;
      _likedByUser = $v.likedByUser;
      _urls = $v.urls.toBuilder();
      _tags = $v.tags.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Photo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Photo;
  }

  @override
  void update(void Function(PhotoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Photo build() {
    _$Photo _$result;
    try {
      _$result = _$v ??
          new _$Photo._(
              id: BuiltValueNullFieldError.checkNotNull(id, 'Photo', 'id'),
              width: BuiltValueNullFieldError.checkNotNull(width, 'Photo', 'width'),
              height: BuiltValueNullFieldError.checkNotNull(height, 'Photo', 'height'),
              description: description,
              likes: BuiltValueNullFieldError.checkNotNull(likes, 'Photo', 'likes'),
              likedByUser: BuiltValueNullFieldError.checkNotNull(likedByUser, 'Photo', 'likedByUser'),
              urls: urls.build(),
              tags: tags.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'urls';
        urls.build();
        _$failedField = 'tags';
        tags.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError('Photo', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Url extends Url {
  @override
  final String full;
  @override
  final String regular;
  @override
  final String thumb;
  @override
  final String raw;

  factory _$Url([void Function(UrlBuilder)? updates]) => (new UrlBuilder()..update(updates)).build();

  _$Url._({required this.full, required this.regular, required this.thumb, required this.raw}) : super._() {
    BuiltValueNullFieldError.checkNotNull(full, 'Url', 'full');
    BuiltValueNullFieldError.checkNotNull(regular, 'Url', 'regular');
    BuiltValueNullFieldError.checkNotNull(thumb, 'Url', 'thumb');
    BuiltValueNullFieldError.checkNotNull(raw, 'Url', 'raw');
  }

  @override
  Url rebuild(void Function(UrlBuilder) updates) => (toBuilder()..update(updates)).build();

  @override
  UrlBuilder toBuilder() => new UrlBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Url && full == other.full && regular == other.regular && thumb == other.thumb && raw == other.raw;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc($jc(0, full.hashCode), regular.hashCode), thumb.hashCode), raw.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Url')
          ..add('full', full)
          ..add('regular', regular)
          ..add('thumb', thumb)
          ..add('raw', raw))
        .toString();
  }
}

class UrlBuilder implements Builder<Url, UrlBuilder> {
  _$Url? _$v;

  String? _full;
  String? get full => _$this._full;
  set full(String? full) => _$this._full = full;

  String? _regular;
  String? get regular => _$this._regular;
  set regular(String? regular) => _$this._regular = regular;

  String? _thumb;
  String? get thumb => _$this._thumb;
  set thumb(String? thumb) => _$this._thumb = thumb;

  String? _raw;
  String? get raw => _$this._raw;
  set raw(String? raw) => _$this._raw = raw;

  UrlBuilder();

  UrlBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _full = $v.full;
      _regular = $v.regular;
      _thumb = $v.thumb;
      _raw = $v.raw;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Url other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Url;
  }

  @override
  void update(void Function(UrlBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Url build() {
    final _$result = _$v ??
        new _$Url._(
            full: BuiltValueNullFieldError.checkNotNull(full, 'Url', 'full'),
            regular: BuiltValueNullFieldError.checkNotNull(regular, 'Url', 'regular'),
            thumb: BuiltValueNullFieldError.checkNotNull(thumb, 'Url', 'thumb'),
            raw: BuiltValueNullFieldError.checkNotNull(raw, 'Url', 'raw'));
    replace(_$result);
    return _$result;
  }
}

class _$Tag extends Tag {
  @override
  final String type;
  @override
  final String title;

  factory _$Tag([void Function(TagBuilder)? updates]) => (new TagBuilder()..update(updates)).build();

  _$Tag._({required this.type, required this.title}) : super._() {
    BuiltValueNullFieldError.checkNotNull(type, 'Tag', 'type');
    BuiltValueNullFieldError.checkNotNull(title, 'Tag', 'title');
  }

  @override
  Tag rebuild(void Function(TagBuilder) updates) => (toBuilder()..update(updates)).build();

  @override
  TagBuilder toBuilder() => new TagBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Tag && type == other.type && title == other.title;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, type.hashCode), title.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Tag')..add('type', type)..add('title', title)).toString();
  }
}

class TagBuilder implements Builder<Tag, TagBuilder> {
  _$Tag? _$v;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  TagBuilder();

  TagBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _title = $v.title;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Tag other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Tag;
  }

  @override
  void update(void Function(TagBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Tag build() {
    final _$result = _$v ??
        new _$Tag._(
            type: BuiltValueNullFieldError.checkNotNull(type, 'Tag', 'type'),
            title: BuiltValueNullFieldError.checkNotNull(title, 'Tag', 'title'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
