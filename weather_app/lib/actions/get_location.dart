part of actions;

@freezed
class GetLocationAction with _$GetLocationAction implements AppAction {
  const factory GetLocationAction() = GetLocationActionStart;

  const factory GetLocationAction.successful({
    required Location location,
  }) = GetLocationActionSuccessful;

  @Implements(ErrorAction)
  const factory GetLocationAction.error({
    required Object error,
    required StackTrace stackTrace,
  }) = GetLocationActionError;
}
