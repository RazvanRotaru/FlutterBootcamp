part of actions;

@freezed
class GetCurrentWeatherAction with _$GetCurrentWeatherAction implements AppAction {
  const factory GetCurrentWeatherAction() = GetCurrentWeatherActionStart;

  const factory GetCurrentWeatherAction.successful({
    required CurrentWeather weather,
  }) = GetCurrentWeatherActionSuccessful;

  @Implements(ErrorAction)
  const factory GetCurrentWeatherAction.error({
    required Object error,
    required StackTrace stackTrace,
  }) = GetCurrentWeatherActionError;
}
