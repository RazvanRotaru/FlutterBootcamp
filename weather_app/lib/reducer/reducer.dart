import 'package:redux/redux.dart';
import 'package:weather_app/actions/index.dart';
import 'package:weather_app/models/index.dart';

final Reducer<AppState> reducer = combineReducers(<Reducer<AppState>>[
  (AppState state, dynamic action) {
    print(action);
    return state;
  },
  TypedReducer<AppState, GetLocationActionStart>(_getLocation),
  TypedReducer<AppState, GetLocationActionSuccessful>(_getLocationSuccessful),
  TypedReducer<AppState, GetLocationActionError>(_getLocationError),
  TypedReducer<AppState, GetCurrentWeatherActionStart>(_getCurrentWeather),
  TypedReducer<AppState, GetCurrentWeatherActionSuccessful>(_getCurrentWeatherSuccessful),
  TypedReducer<AppState, GetCurrentWeatherActionError>(_getCurrentWeatherError),
]);

AppState _getLocation(AppState state, GetLocationActionStart action) {
  return state.rebuild((AppStateBuilder builder) {
    builder.isLoading = true;
  });
}

AppState _getLocationSuccessful(AppState state, GetLocationActionSuccessful action) {
  return state.rebuild((AppStateBuilder builder) {
    builder
      ..isLoading = false
      ..location.replace(action.location);
  });
}

AppState _getLocationError(AppState state, GetLocationActionError action) {
  return state.rebuild((AppStateBuilder builder) {
    builder
      ..isLoading = false
      ..errorMessage = '${action.error}';
  });
}

AppState _getCurrentWeather(AppState state, GetCurrentWeatherActionStart action) {
  return state.rebuild((AppStateBuilder builder) {
    builder.isLoading = true;
  });
}

AppState _getCurrentWeatherSuccessful(AppState state, GetCurrentWeatherActionSuccessful action) {
  return state.rebuild((AppStateBuilder builder) {
    builder
      ..isLoading = false
      ..currentWeather.replace(action.weather);
  });
}

AppState _getCurrentWeatherError(AppState state, GetCurrentWeatherActionError action) {
  return state.rebuild((AppStateBuilder builder) {
    builder
      ..isLoading = false
      ..errorMessage = '${action.error}';
  });
}
