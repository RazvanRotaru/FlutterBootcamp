part of models;

abstract class Location implements Built<Location, LocationBuilder> {
  factory Location([void Function(LocationBuilder)? updates]) = _$Location;

  factory Location.fromJson(dynamic json) {
    return serializers.deserializeWith(serializer, json)!;
  }

  Location._();

  String? get country;

  @BuiltValueField(wireName: 'country_code')
  String? get countryCode;

  String? get region;

  @BuiltValueField(wireName: 'region_name')
  String? get regionName;

  String? get city;

  String? get zip;

  num get lat;

  num get lon;

  String? get timezone;

  String? get isp;

  String? get querry;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this)! as Map<String, dynamic>;

  static Serializer<Location> get serializer => _$locationSerializer;
}
