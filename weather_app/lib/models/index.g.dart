// GENERATED CODE - DO NOT MODIFY BY HAND

part of models;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CurrentWeather> _$currentWeatherSerializer = new _$CurrentWeatherSerializer();
Serializer<Location> _$locationSerializer = new _$LocationSerializer();
Serializer<Weather> _$weatherSerializer = new _$WeatherSerializer();

class _$CurrentWeatherSerializer implements StructuredSerializer<CurrentWeather> {
  @override
  final Iterable<Type> types = const [CurrentWeather, _$CurrentWeather];
  @override
  final String wireName = 'CurrentWeather';

  @override
  Iterable<Object?> serialize(Serializers serializers, CurrentWeather object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'dt',
      serializers.serialize(object.time, specifiedType: const FullType(num)),
      'sunrise',
      serializers.serialize(object.sunriseTime, specifiedType: const FullType(num)),
      'sunset',
      serializers.serialize(object.sunsetTime, specifiedType: const FullType(num)),
      'temp',
      serializers.serialize(object.temp, specifiedType: const FullType(num)),
      'feels_like',
      serializers.serialize(object.feelsLike, specifiedType: const FullType(num)),
      'humidity',
      serializers.serialize(object.humidity, specifiedType: const FullType(num)),
      'dew_point',
      serializers.serialize(object.dewPoint, specifiedType: const FullType(num)),
      'uvi',
      serializers.serialize(object.uvi, specifiedType: const FullType(num)),
      'clouds',
      serializers.serialize(object.clouds, specifiedType: const FullType(num)),
      'visibility',
      serializers.serialize(object.visibility, specifiedType: const FullType(num)),
      'wind_speed',
      serializers.serialize(object.windSpeed, specifiedType: const FullType(num)),
      'wind_deg',
      serializers.serialize(object.windDeg, specifiedType: const FullType(num)),
      'weather',
      serializers.serialize(object.weather, specifiedType: const FullType(BuiltList, const [const FullType(Weather)])),
    ];

    return result;
  }

  @override
  CurrentWeather deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CurrentWeatherBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'dt':
          result.time = serializers.deserialize(value, specifiedType: const FullType(num)) as num;
          break;
        case 'sunrise':
          result.sunriseTime = serializers.deserialize(value, specifiedType: const FullType(num)) as num;
          break;
        case 'sunset':
          result.sunsetTime = serializers.deserialize(value, specifiedType: const FullType(num)) as num;
          break;
        case 'temp':
          result.temp = serializers.deserialize(value, specifiedType: const FullType(num)) as num;
          break;
        case 'feels_like':
          result.feelsLike = serializers.deserialize(value, specifiedType: const FullType(num)) as num;
          break;
        case 'humidity':
          result.humidity = serializers.deserialize(value, specifiedType: const FullType(num)) as num;
          break;
        case 'dew_point':
          result.dewPoint = serializers.deserialize(value, specifiedType: const FullType(num)) as num;
          break;
        case 'uvi':
          result.uvi = serializers.deserialize(value, specifiedType: const FullType(num)) as num;
          break;
        case 'clouds':
          result.clouds = serializers.deserialize(value, specifiedType: const FullType(num)) as num;
          break;
        case 'visibility':
          result.visibility = serializers.deserialize(value, specifiedType: const FullType(num)) as num;
          break;
        case 'wind_speed':
          result.windSpeed = serializers.deserialize(value, specifiedType: const FullType(num)) as num;
          break;
        case 'wind_deg':
          result.windDeg = serializers.deserialize(value, specifiedType: const FullType(num)) as num;
          break;
        case 'weather':
          result.weather.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [const FullType(Weather)]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$LocationSerializer implements StructuredSerializer<Location> {
  @override
  final Iterable<Type> types = const [Location, _$Location];
  @override
  final String wireName = 'Location';

  @override
  Iterable<Object?> serialize(Serializers serializers, Location object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'lat',
      serializers.serialize(object.lat, specifiedType: const FullType(num)),
      'lon',
      serializers.serialize(object.lon, specifiedType: const FullType(num)),
    ];
    Object? value;
    value = object.country;
    if (value != null) {
      result..add('country')..add(serializers.serialize(value, specifiedType: const FullType(String)));
    }
    value = object.countryCode;
    if (value != null) {
      result..add('country_code')..add(serializers.serialize(value, specifiedType: const FullType(String)));
    }
    value = object.region;
    if (value != null) {
      result..add('region')..add(serializers.serialize(value, specifiedType: const FullType(String)));
    }
    value = object.regionName;
    if (value != null) {
      result..add('region_name')..add(serializers.serialize(value, specifiedType: const FullType(String)));
    }
    value = object.city;
    if (value != null) {
      result..add('city')..add(serializers.serialize(value, specifiedType: const FullType(String)));
    }
    value = object.zip;
    if (value != null) {
      result..add('zip')..add(serializers.serialize(value, specifiedType: const FullType(String)));
    }
    value = object.timezone;
    if (value != null) {
      result..add('timezone')..add(serializers.serialize(value, specifiedType: const FullType(String)));
    }
    value = object.isp;
    if (value != null) {
      result..add('isp')..add(serializers.serialize(value, specifiedType: const FullType(String)));
    }
    value = object.querry;
    if (value != null) {
      result..add('querry')..add(serializers.serialize(value, specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Location deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LocationBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'country':
          result.country = serializers.deserialize(value, specifiedType: const FullType(String)) as String?;
          break;
        case 'country_code':
          result.countryCode = serializers.deserialize(value, specifiedType: const FullType(String)) as String?;
          break;
        case 'region':
          result.region = serializers.deserialize(value, specifiedType: const FullType(String)) as String?;
          break;
        case 'region_name':
          result.regionName = serializers.deserialize(value, specifiedType: const FullType(String)) as String?;
          break;
        case 'city':
          result.city = serializers.deserialize(value, specifiedType: const FullType(String)) as String?;
          break;
        case 'zip':
          result.zip = serializers.deserialize(value, specifiedType: const FullType(String)) as String?;
          break;
        case 'lat':
          result.lat = serializers.deserialize(value, specifiedType: const FullType(num)) as num;
          break;
        case 'lon':
          result.lon = serializers.deserialize(value, specifiedType: const FullType(num)) as num;
          break;
        case 'timezone':
          result.timezone = serializers.deserialize(value, specifiedType: const FullType(String)) as String?;
          break;
        case 'isp':
          result.isp = serializers.deserialize(value, specifiedType: const FullType(String)) as String?;
          break;
        case 'querry':
          result.querry = serializers.deserialize(value, specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$WeatherSerializer implements StructuredSerializer<Weather> {
  @override
  final Iterable<Type> types = const [Weather, _$Weather];
  @override
  final String wireName = 'Weather';

  @override
  Iterable<Object?> serialize(Serializers serializers, Weather object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(num)),
      'main',
      serializers.serialize(object.main, specifiedType: const FullType(String)),
      'description',
      serializers.serialize(object.description, specifiedType: const FullType(String)),
      'icon',
      serializers.serialize(object.icon, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Weather deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WeatherBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value, specifiedType: const FullType(num)) as num;
          break;
        case 'main':
          result.main = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'icon':
          result.icon = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$AppState extends AppState {
  @override
  final Location? location;
  @override
  final CurrentWeather? currentWeather;
  @override
  final String? errorMessage;
  @override
  final bool isLoading;

  factory _$AppState([void Function(AppStateBuilder)? updates]) => (new AppStateBuilder()..update(updates)).build();

  _$AppState._({this.location, this.currentWeather, this.errorMessage, required this.isLoading}) : super._() {
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
        location == other.location &&
        currentWeather == other.currentWeather &&
        errorMessage == other.errorMessage &&
        isLoading == other.isLoading;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc($jc(0, location.hashCode), currentWeather.hashCode), errorMessage.hashCode), isLoading.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppState')
          ..add('location', location)
          ..add('currentWeather', currentWeather)
          ..add('errorMessage', errorMessage)
          ..add('isLoading', isLoading))
        .toString();
  }
}

class AppStateBuilder implements Builder<AppState, AppStateBuilder> {
  _$AppState? _$v;

  LocationBuilder? _location;
  LocationBuilder get location => _$this._location ??= new LocationBuilder();
  set location(LocationBuilder? location) => _$this._location = location;

  CurrentWeatherBuilder? _currentWeather;
  CurrentWeatherBuilder get currentWeather => _$this._currentWeather ??= new CurrentWeatherBuilder();
  set currentWeather(CurrentWeatherBuilder? currentWeather) => _$this._currentWeather = currentWeather;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  AppStateBuilder();

  AppStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _location = $v.location?.toBuilder();
      _currentWeather = $v.currentWeather?.toBuilder();
      _errorMessage = $v.errorMessage;
      _isLoading = $v.isLoading;
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
              location: _location?.build(),
              currentWeather: _currentWeather?.build(),
              errorMessage: errorMessage,
              isLoading: BuiltValueNullFieldError.checkNotNull(isLoading, 'AppState', 'isLoading'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'location';
        _location?.build();
        _$failedField = 'currentWeather';
        _currentWeather?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError('AppState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$CurrentWeather extends CurrentWeather {
  @override
  final num time;
  @override
  final num sunriseTime;
  @override
  final num sunsetTime;
  @override
  final num temp;
  @override
  final num feelsLike;
  @override
  final num humidity;
  @override
  final num dewPoint;
  @override
  final num uvi;
  @override
  final num clouds;
  @override
  final num visibility;
  @override
  final num windSpeed;
  @override
  final num windDeg;
  @override
  final BuiltList<Weather> weather;

  factory _$CurrentWeather([void Function(CurrentWeatherBuilder)? updates]) =>
      (new CurrentWeatherBuilder()..update(updates)).build();

  _$CurrentWeather._(
      {required this.time,
      required this.sunriseTime,
      required this.sunsetTime,
      required this.temp,
      required this.feelsLike,
      required this.humidity,
      required this.dewPoint,
      required this.uvi,
      required this.clouds,
      required this.visibility,
      required this.windSpeed,
      required this.windDeg,
      required this.weather})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(time, 'CurrentWeather', 'time');
    BuiltValueNullFieldError.checkNotNull(sunriseTime, 'CurrentWeather', 'sunriseTime');
    BuiltValueNullFieldError.checkNotNull(sunsetTime, 'CurrentWeather', 'sunsetTime');
    BuiltValueNullFieldError.checkNotNull(temp, 'CurrentWeather', 'temp');
    BuiltValueNullFieldError.checkNotNull(feelsLike, 'CurrentWeather', 'feelsLike');
    BuiltValueNullFieldError.checkNotNull(humidity, 'CurrentWeather', 'humidity');
    BuiltValueNullFieldError.checkNotNull(dewPoint, 'CurrentWeather', 'dewPoint');
    BuiltValueNullFieldError.checkNotNull(uvi, 'CurrentWeather', 'uvi');
    BuiltValueNullFieldError.checkNotNull(clouds, 'CurrentWeather', 'clouds');
    BuiltValueNullFieldError.checkNotNull(visibility, 'CurrentWeather', 'visibility');
    BuiltValueNullFieldError.checkNotNull(windSpeed, 'CurrentWeather', 'windSpeed');
    BuiltValueNullFieldError.checkNotNull(windDeg, 'CurrentWeather', 'windDeg');
    BuiltValueNullFieldError.checkNotNull(weather, 'CurrentWeather', 'weather');
  }

  @override
  CurrentWeather rebuild(void Function(CurrentWeatherBuilder) updates) => (toBuilder()..update(updates)).build();

  @override
  CurrentWeatherBuilder toBuilder() => new CurrentWeatherBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CurrentWeather &&
        time == other.time &&
        sunriseTime == other.sunriseTime &&
        sunsetTime == other.sunsetTime &&
        temp == other.temp &&
        feelsLike == other.feelsLike &&
        humidity == other.humidity &&
        dewPoint == other.dewPoint &&
        uvi == other.uvi &&
        clouds == other.clouds &&
        visibility == other.visibility &&
        windSpeed == other.windSpeed &&
        windDeg == other.windDeg &&
        weather == other.weather;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc($jc($jc($jc(0, time.hashCode), sunriseTime.hashCode), sunsetTime.hashCode),
                                            temp.hashCode),
                                        feelsLike.hashCode),
                                    humidity.hashCode),
                                dewPoint.hashCode),
                            uvi.hashCode),
                        clouds.hashCode),
                    visibility.hashCode),
                windSpeed.hashCode),
            windDeg.hashCode),
        weather.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CurrentWeather')
          ..add('time', time)
          ..add('sunriseTime', sunriseTime)
          ..add('sunsetTime', sunsetTime)
          ..add('temp', temp)
          ..add('feelsLike', feelsLike)
          ..add('humidity', humidity)
          ..add('dewPoint', dewPoint)
          ..add('uvi', uvi)
          ..add('clouds', clouds)
          ..add('visibility', visibility)
          ..add('windSpeed', windSpeed)
          ..add('windDeg', windDeg)
          ..add('weather', weather))
        .toString();
  }
}

class CurrentWeatherBuilder implements Builder<CurrentWeather, CurrentWeatherBuilder> {
  _$CurrentWeather? _$v;

  num? _time;
  num? get time => _$this._time;
  set time(num? time) => _$this._time = time;

  num? _sunriseTime;
  num? get sunriseTime => _$this._sunriseTime;
  set sunriseTime(num? sunriseTime) => _$this._sunriseTime = sunriseTime;

  num? _sunsetTime;
  num? get sunsetTime => _$this._sunsetTime;
  set sunsetTime(num? sunsetTime) => _$this._sunsetTime = sunsetTime;

  num? _temp;
  num? get temp => _$this._temp;
  set temp(num? temp) => _$this._temp = temp;

  num? _feelsLike;
  num? get feelsLike => _$this._feelsLike;
  set feelsLike(num? feelsLike) => _$this._feelsLike = feelsLike;

  num? _humidity;
  num? get humidity => _$this._humidity;
  set humidity(num? humidity) => _$this._humidity = humidity;

  num? _dewPoint;
  num? get dewPoint => _$this._dewPoint;
  set dewPoint(num? dewPoint) => _$this._dewPoint = dewPoint;

  num? _uvi;
  num? get uvi => _$this._uvi;
  set uvi(num? uvi) => _$this._uvi = uvi;

  num? _clouds;
  num? get clouds => _$this._clouds;
  set clouds(num? clouds) => _$this._clouds = clouds;

  num? _visibility;
  num? get visibility => _$this._visibility;
  set visibility(num? visibility) => _$this._visibility = visibility;

  num? _windSpeed;
  num? get windSpeed => _$this._windSpeed;
  set windSpeed(num? windSpeed) => _$this._windSpeed = windSpeed;

  num? _windDeg;
  num? get windDeg => _$this._windDeg;
  set windDeg(num? windDeg) => _$this._windDeg = windDeg;

  ListBuilder<Weather>? _weather;
  ListBuilder<Weather> get weather => _$this._weather ??= new ListBuilder<Weather>();
  set weather(ListBuilder<Weather>? weather) => _$this._weather = weather;

  CurrentWeatherBuilder();

  CurrentWeatherBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _time = $v.time;
      _sunriseTime = $v.sunriseTime;
      _sunsetTime = $v.sunsetTime;
      _temp = $v.temp;
      _feelsLike = $v.feelsLike;
      _humidity = $v.humidity;
      _dewPoint = $v.dewPoint;
      _uvi = $v.uvi;
      _clouds = $v.clouds;
      _visibility = $v.visibility;
      _windSpeed = $v.windSpeed;
      _windDeg = $v.windDeg;
      _weather = $v.weather.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CurrentWeather other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CurrentWeather;
  }

  @override
  void update(void Function(CurrentWeatherBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CurrentWeather build() {
    _$CurrentWeather _$result;
    try {
      _$result = _$v ??
          new _$CurrentWeather._(
              time: BuiltValueNullFieldError.checkNotNull(time, 'CurrentWeather', 'time'),
              sunriseTime: BuiltValueNullFieldError.checkNotNull(sunriseTime, 'CurrentWeather', 'sunriseTime'),
              sunsetTime: BuiltValueNullFieldError.checkNotNull(sunsetTime, 'CurrentWeather', 'sunsetTime'),
              temp: BuiltValueNullFieldError.checkNotNull(temp, 'CurrentWeather', 'temp'),
              feelsLike: BuiltValueNullFieldError.checkNotNull(feelsLike, 'CurrentWeather', 'feelsLike'),
              humidity: BuiltValueNullFieldError.checkNotNull(humidity, 'CurrentWeather', 'humidity'),
              dewPoint: BuiltValueNullFieldError.checkNotNull(dewPoint, 'CurrentWeather', 'dewPoint'),
              uvi: BuiltValueNullFieldError.checkNotNull(uvi, 'CurrentWeather', 'uvi'),
              clouds: BuiltValueNullFieldError.checkNotNull(clouds, 'CurrentWeather', 'clouds'),
              visibility: BuiltValueNullFieldError.checkNotNull(visibility, 'CurrentWeather', 'visibility'),
              windSpeed: BuiltValueNullFieldError.checkNotNull(windSpeed, 'CurrentWeather', 'windSpeed'),
              windDeg: BuiltValueNullFieldError.checkNotNull(windDeg, 'CurrentWeather', 'windDeg'),
              weather: weather.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'weather';
        weather.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError('CurrentWeather', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Location extends Location {
  @override
  final String? country;
  @override
  final String? countryCode;
  @override
  final String? region;
  @override
  final String? regionName;
  @override
  final String? city;
  @override
  final String? zip;
  @override
  final num lat;
  @override
  final num lon;
  @override
  final String? timezone;
  @override
  final String? isp;
  @override
  final String? querry;

  factory _$Location([void Function(LocationBuilder)? updates]) => (new LocationBuilder()..update(updates)).build();

  _$Location._(
      {this.country,
      this.countryCode,
      this.region,
      this.regionName,
      this.city,
      this.zip,
      required this.lat,
      required this.lon,
      this.timezone,
      this.isp,
      this.querry})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(lat, 'Location', 'lat');
    BuiltValueNullFieldError.checkNotNull(lon, 'Location', 'lon');
  }

  @override
  Location rebuild(void Function(LocationBuilder) updates) => (toBuilder()..update(updates)).build();

  @override
  LocationBuilder toBuilder() => new LocationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Location &&
        country == other.country &&
        countryCode == other.countryCode &&
        region == other.region &&
        regionName == other.regionName &&
        city == other.city &&
        zip == other.zip &&
        lat == other.lat &&
        lon == other.lon &&
        timezone == other.timezone &&
        isp == other.isp &&
        querry == other.querry;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc($jc($jc($jc(0, country.hashCode), countryCode.hashCode), region.hashCode),
                                    regionName.hashCode),
                                city.hashCode),
                            zip.hashCode),
                        lat.hashCode),
                    lon.hashCode),
                timezone.hashCode),
            isp.hashCode),
        querry.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Location')
          ..add('country', country)
          ..add('countryCode', countryCode)
          ..add('region', region)
          ..add('regionName', regionName)
          ..add('city', city)
          ..add('zip', zip)
          ..add('lat', lat)
          ..add('lon', lon)
          ..add('timezone', timezone)
          ..add('isp', isp)
          ..add('querry', querry))
        .toString();
  }
}

class LocationBuilder implements Builder<Location, LocationBuilder> {
  _$Location? _$v;

  String? _country;
  String? get country => _$this._country;
  set country(String? country) => _$this._country = country;

  String? _countryCode;
  String? get countryCode => _$this._countryCode;
  set countryCode(String? countryCode) => _$this._countryCode = countryCode;

  String? _region;
  String? get region => _$this._region;
  set region(String? region) => _$this._region = region;

  String? _regionName;
  String? get regionName => _$this._regionName;
  set regionName(String? regionName) => _$this._regionName = regionName;

  String? _city;
  String? get city => _$this._city;
  set city(String? city) => _$this._city = city;

  String? _zip;
  String? get zip => _$this._zip;
  set zip(String? zip) => _$this._zip = zip;

  num? _lat;
  num? get lat => _$this._lat;
  set lat(num? lat) => _$this._lat = lat;

  num? _lon;
  num? get lon => _$this._lon;
  set lon(num? lon) => _$this._lon = lon;

  String? _timezone;
  String? get timezone => _$this._timezone;
  set timezone(String? timezone) => _$this._timezone = timezone;

  String? _isp;
  String? get isp => _$this._isp;
  set isp(String? isp) => _$this._isp = isp;

  String? _querry;
  String? get querry => _$this._querry;
  set querry(String? querry) => _$this._querry = querry;

  LocationBuilder();

  LocationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _country = $v.country;
      _countryCode = $v.countryCode;
      _region = $v.region;
      _regionName = $v.regionName;
      _city = $v.city;
      _zip = $v.zip;
      _lat = $v.lat;
      _lon = $v.lon;
      _timezone = $v.timezone;
      _isp = $v.isp;
      _querry = $v.querry;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Location other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Location;
  }

  @override
  void update(void Function(LocationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Location build() {
    final _$result = _$v ??
        new _$Location._(
            country: country,
            countryCode: countryCode,
            region: region,
            regionName: regionName,
            city: city,
            zip: zip,
            lat: BuiltValueNullFieldError.checkNotNull(lat, 'Location', 'lat'),
            lon: BuiltValueNullFieldError.checkNotNull(lon, 'Location', 'lon'),
            timezone: timezone,
            isp: isp,
            querry: querry);
    replace(_$result);
    return _$result;
  }
}

class _$Weather extends Weather {
  @override
  final num id;
  @override
  final String main;
  @override
  final String description;
  @override
  final String icon;

  factory _$Weather([void Function(WeatherBuilder)? updates]) => (new WeatherBuilder()..update(updates)).build();

  _$Weather._({required this.id, required this.main, required this.description, required this.icon}) : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'Weather', 'id');
    BuiltValueNullFieldError.checkNotNull(main, 'Weather', 'main');
    BuiltValueNullFieldError.checkNotNull(description, 'Weather', 'description');
    BuiltValueNullFieldError.checkNotNull(icon, 'Weather', 'icon');
  }

  @override
  Weather rebuild(void Function(WeatherBuilder) updates) => (toBuilder()..update(updates)).build();

  @override
  WeatherBuilder toBuilder() => new WeatherBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Weather &&
        id == other.id &&
        main == other.main &&
        description == other.description &&
        icon == other.icon;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc($jc(0, id.hashCode), main.hashCode), description.hashCode), icon.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Weather')
          ..add('id', id)
          ..add('main', main)
          ..add('description', description)
          ..add('icon', icon))
        .toString();
  }
}

class WeatherBuilder implements Builder<Weather, WeatherBuilder> {
  _$Weather? _$v;

  num? _id;
  num? get id => _$this._id;
  set id(num? id) => _$this._id = id;

  String? _main;
  String? get main => _$this._main;
  set main(String? main) => _$this._main = main;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _icon;
  String? get icon => _$this._icon;
  set icon(String? icon) => _$this._icon = icon;

  WeatherBuilder();

  WeatherBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _main = $v.main;
      _description = $v.description;
      _icon = $v.icon;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Weather other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Weather;
  }

  @override
  void update(void Function(WeatherBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Weather build() {
    final _$result = _$v ??
        new _$Weather._(
            id: BuiltValueNullFieldError.checkNotNull(id, 'Weather', 'id'),
            main: BuiltValueNullFieldError.checkNotNull(main, 'Weather', 'main'),
            description: BuiltValueNullFieldError.checkNotNull(description, 'Weather', 'description'),
            icon: BuiltValueNullFieldError.checkNotNull(icon, 'Weather', 'icon'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
