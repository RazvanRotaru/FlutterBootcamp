part of models;

abstract class AppState implements Built<AppState, AppStateBuilder> {
  factory AppState() {
    return _$AppState((AppStateBuilder builder) {
      builder
        ..isLoading = false
        ..currentPage = 1
        ..currentCategory = '';
    });
  }

  AppState._();

  BuiltList<Photo> get photos;

  int get currentPage;

  String get currentCategory;

  bool get isLoading;

  String? get errorMessage;
}
