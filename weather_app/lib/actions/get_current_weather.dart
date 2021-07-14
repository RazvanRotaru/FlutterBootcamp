import 'package:weather_app/models/current_weather.dart';

class GetCurrentWeatherAction {}

class GetCurrentWeatherResponse {}

class GetCurrentWeatherSuccessful extends GetCurrentWeatherResponse {
  GetCurrentWeatherSuccessful(this.weather);

  final CurrentWeather weather;

  @override
  String toString() {
    return 'GetCurrentWeatherSuccessful{weather: $weather}';
  }
}

class GetCurrentWeatherError extends GetCurrentWeatherResponse {
  GetCurrentWeatherError(this.error);

  final Object error;

  @override
  String toString() {
    return 'GetCurrentWeatherError{error: $error}';
  }
}
