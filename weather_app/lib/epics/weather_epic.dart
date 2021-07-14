import 'package:redux_epics/redux_epics.dart';
import 'package:weather_app/actions/get_current_weather.dart';
import 'package:weather_app/actions/get_location.dart';
import 'package:weather_app/data/weather_api.dart';
import 'package:weather_app/models/app_state.dart';
import 'package:rxdart/rxdart.dart';
import 'package:weather_app/models/current_weather.dart';

class WeatherEpic {
  WeatherEpic({required WeatherApi api}) : _weatherApi = api;

  final WeatherApi _weatherApi;

  Epic<AppState> get epics => combineEpics<AppState>(<Epic<AppState>>[
        TypedEpic<AppState, GetCurrentWeatherAction>(_getWeather),
      ]);

  Stream<GetCurrentWeatherResponse> _getWeather(Stream<GetCurrentWeatherAction> actions, EpicStore<AppState> store) {
    return actions
        .asyncMap((GetCurrentWeatherAction action) =>
            _weatherApi.getCurrentWeather(store.state.location!.lat, store.state.location!.lon))
        .doOnError((Object error, StackTrace stackTrace) => GetLocationAction())
        .map<GetCurrentWeatherResponse>((CurrentWeather weather) => GetCurrentWeatherSuccessful(weather))
        .onErrorReturnWith((Object error, StackTrace stackTrace) => GetCurrentWeatherError(error));
  }
}
