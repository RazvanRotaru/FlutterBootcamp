part of actions;

@freezed
class GetPhotosAction with _$GetPhotosAction implements AppAction {
  const factory GetPhotosAction() = GetPhotosActionStart;

  const factory GetPhotosAction.successful({
    required List<Photo> photos,
  }) = GetPhotosActionSuccessful;

  @Implements(ErrorAction)
  const factory GetPhotosAction.error({
    required Object error,
    required StackTrace stackTrace,
  }) = GetPhotosActionError;
}
