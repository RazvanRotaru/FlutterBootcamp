part of models;

abstract class Url implements Built<Url, UrlBuilder> {
  factory Url([void Function(UrlBuilder b) updates]) = _$Url;

  factory Url.fromJson(dynamic json) => serializers.deserializeWith(serializer, json)!;

  Url._();

  String get full;

  String get regular;

  String get thumb;

  String get raw;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this)! as Map<String, dynamic>;

  static Serializer<Url> get serializer => _$urlSerializer;
}
