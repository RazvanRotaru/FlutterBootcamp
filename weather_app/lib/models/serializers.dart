import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:weather_app/models/index.dart';

part 'serializers.g.dart';

@SerializersFor(<Type>[
  Location,
  Weather,
  CurrentWeather,
])
Serializers serializers = (_$serializers.toBuilder() //
      ..addPlugin(StandardJsonPlugin()))
    .build();
