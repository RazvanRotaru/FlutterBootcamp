part of models;

abstract class AppState implements Built<AppState, AppStateBuilder> {
  factory AppState() {
    return _$AppState((AppStateBuilder builder) {
      builder.isLoading = false;
    });
  }

  AppState._();

  Location? get location;

  CurrentWeather? get currentWeather;

  String? get errorMessage;

  bool get isLoading;
}
