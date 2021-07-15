import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';
import 'package:weather_app/actions/app_actions.dart';
import 'package:weather_app/actions/index.dart';
import 'package:weather_app/data/weather_api.dart';
import 'package:weather_app/models/index.dart';

class WeatherEpic {
  WeatherEpic({required WeatherApi api}) : _weatherApi = api;

  final WeatherApi _weatherApi;

  Epic<AppState> get epics {
    return combineEpics<AppState>(<Epic<AppState>>[
      TypedEpic<AppState, GetCurrentWeatherActionStart>(_getWeather),
    ]);
  }

  /// this is my baby and my baby will remain

  // Stream<AppAction> _getWeather(Stream<GetCurrentWeatherActionStart> actions, EpicStore<AppState> store) {
  //   return actions
  //       .asyncMap(
  //         (GetCurrentWeatherActionStart action) {
  //           return _weatherApi.getCurrentWeather(store.state.location!.lat, store.state.location!.lon);
  //         },
  //       )
  //       .map<AppAction>((CurrentWeather weather) => GetCurrentWeatherAction.successful(weather: weather))
  //       .onErrorResume(
  //         (Object error, StackTrace stackTrace) {
  //           final AppAction errorAction = store.state.location == null
  //               ? const GetLocationActionStart()
  //               : GetCurrentWeatherAction.error(error: error, stackTrace: stackTrace);
  //
  //           return Stream<AppAction>.fromIterable(<AppAction>[
  //             errorAction,
  //           ]);
  //         },
  //       ));
  // }

  Stream<AppAction> _getWeather(Stream<GetCurrentWeatherActionStart> actions, EpicStore<AppState> store) {
    return actions.flatMap(
      (GetCurrentWeatherActionStart action) {
        return Stream<GetCurrentWeatherActionStart>.value(action)
            .asyncMap<CurrentWeather>(
              (GetCurrentWeatherActionStart action) {
                return _weatherApi.getCurrentWeather(store.state.location!.lat, store.state.location!.lon);
              },
            )
            .map<AppAction>((CurrentWeather weather) => GetCurrentWeatherAction.successful(weather: weather))
            .onErrorReturnWith(
              (Object error, StackTrace stackTrace) {
                return store.state.location == null
                    ? const GetLocationActionStart()
                    : GetLocationAction.error(error: error, stackTrace: stackTrace);
              },
            );
      },
    );
  }
}
