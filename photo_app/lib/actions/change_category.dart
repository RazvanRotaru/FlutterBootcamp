part of actions;

@freezed
class ChangeCategoryAction with _$ChangeCategoryAction implements AppAction {
  const factory ChangeCategoryAction({
    required String category,
  }) = ChangeCategoryActionStart;

  const factory ChangeCategoryAction.successful({
    required List<Photo> photos,
  }) = ChangeCategoryActionSuccessful;

  @Implements(ErrorAction)
  const factory ChangeCategoryAction.error({
    required Object error,
    required StackTrace stackTrace,
  }) = ChangeCategoryActionError;
}
