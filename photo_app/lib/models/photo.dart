part of models;

abstract class Photo implements Built<Photo, PhotoBuilder> {
  factory Photo([void Function(PhotoBuilder b) updates]) = _$Photo;

  factory Photo.fromJson(dynamic json) => serializers.deserializeWith(serializer, json)!;

  Photo._();

  String get id;

  num get width;

  num get height;

  String? get description;

  num get likes;

  @BuiltValueField(wireName: 'liked_by_user')
  bool get likedByUser;

  Url get urls;

  BuiltList<Tag> get tags;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this)! as Map<String, dynamic>;

  static Serializer<Photo> get serializer => _$photoSerializer;
}
