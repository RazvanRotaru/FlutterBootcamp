part of models;

abstract class CurrentWeather implements Built<CurrentWeather, CurrentWeatherBuilder> {
  factory CurrentWeather([void Function(CurrentWeatherBuilder)? updates]) = _$CurrentWeather;

  factory CurrentWeather.fromJson(dynamic json) {
    return serializers.deserializeWith(serializer, json)!;
  }

  CurrentWeather._();

  @BuiltValueField(wireName: 'dt')
  num get time;

  @BuiltValueField(wireName: 'sunrise')
  num get sunriseTime;

  @BuiltValueField(wireName: 'sunset')
  num get sunsetTime;

  num get temp;

  @BuiltValueField(wireName: 'feels_like')
  num get feelsLike;

  num get humidity;

  @BuiltValueField(wireName: 'dew_point')
  num get dewPoint;

  num get uvi;

  num get clouds;

  num get visibility;

  @BuiltValueField(wireName: 'wind_speed')
  num get windSpeed;

  @BuiltValueField(wireName: 'wind_deg')
  num get windDeg;

  BuiltList<Weather> get weather;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this)! as Map<String, dynamic>;

  static Serializer<CurrentWeather> get serializer => _$currentWeatherSerializer;
}
