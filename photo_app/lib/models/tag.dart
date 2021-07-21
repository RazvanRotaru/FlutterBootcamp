part of models;

abstract class Tag implements Built<Tag, TagBuilder> {
  factory Tag([void Function(TagBuilder b) updates]) = _$Tag;

  factory Tag.fromJson(dynamic json) => serializers.deserializeWith(serializer, json)!;

  Tag._();

  String get type;

  String get title;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this)! as Map<String, dynamic>;

  static Serializer<Tag> get serializer => _$tagSerializer;
}
