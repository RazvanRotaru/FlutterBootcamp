import 'package:photo_app/actions/index.dart';
import 'package:photo_app/models/index.dart';
import 'package:redux/redux.dart';

Reducer<AppState> reducer = combineReducers<AppState>(
  <Reducer<AppState>>[
    TypedReducer<AppState, GetPhotosActionStart>(_getPhotos),
    TypedReducer<AppState, GetPhotosActionSuccessful>(_getPhotosSuccessful),
    TypedReducer<AppState, GetPhotosActionError>(_getPhotosError),
    TypedReducer<AppState, ChangeCategoryActionStart>(_changeCategory),
    TypedReducer<AppState, ChangeCategoryActionSuccessful>(_changeCategorySuccessful),
    TypedReducer<AppState, ChangeCategoryActionError>(_changeCategoryError),
  ],
);

AppState _getPhotos(AppState state, GetPhotosActionStart action) {
  return state.rebuild((AppStateBuilder builder) {
    builder.isLoading = true;
  });
}

AppState _getPhotosSuccessful(AppState state, GetPhotosActionSuccessful action) {
  return state.rebuild((AppStateBuilder builder) {
    builder
      ..isLoading = false
      ..currentPage = state.currentPage + 1
      ..photos.addAll(action.photos);
  });
}

AppState _getPhotosError(AppState state, GetPhotosActionError action) {
  return state.rebuild((AppStateBuilder builder) {
    builder
      ..isLoading = false
      ..errorMessage = '${action.error}';
  });
}

AppState _changeCategory(AppState state, ChangeCategoryActionStart action) {
  return state.rebuild((AppStateBuilder builder) {
    builder
      ..isLoading = true
      ..currentPage = 1
      ..currentCategory = action.category;
  });
}

AppState _changeCategorySuccessful(AppState state, ChangeCategoryActionSuccessful action) {
  return state.rebuild((AppStateBuilder builder) {
    builder
      ..isLoading = false
      ..photos.replace(action.photos);
  });
}

AppState _changeCategoryError(AppState state, ChangeCategoryActionError action) {
  return state.rebuild((AppStateBuilder builder) {
    builder
      ..isLoading = false
      ..errorMessage = '${action.error}';
  });
}
