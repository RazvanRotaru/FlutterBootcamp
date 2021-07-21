import 'package:photo_app/actions/app_actions.dart';
import 'package:photo_app/actions/index.dart';
import 'package:photo_app/data/photos_api.dart';
import 'package:photo_app/models/index.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';

class PhotosEpic {
  PhotosEpic({required PhotosApi api}) : _api = api;

  final PhotosApi _api;

  Epic<AppState> get epics {
    return combineEpics<AppState>(
      <Epic<AppState>>[
        TypedEpic<AppState, GetPhotosActionStart>(_getPhotos),
        TypedEpic<AppState, ChangeCategoryActionStart>(_changeCategory),
      ],
    );
  }

  Stream<AppAction> _getPhotos(Stream<GetPhotosActionStart> actions, EpicStore<AppState> store) {
    return actions //
        .asyncMap(
          (GetPhotosActionStart action) {
            return _api.getPhotos(page: store.state.currentPage, query: store.state.currentCategory);
          },
        )
        .map((List<Photo> photos) => GetPhotosAction.successful(photos: photos))
        .onErrorReturnWith(
          (Object error, StackTrace stackTrace) {
            return GetPhotosAction.error(error: error, stackTrace: stackTrace);
          },
        );
  }

  Stream<AppAction> _changeCategory(Stream<ChangeCategoryActionStart> actions, EpicStore<AppState> store) {
    return actions //
        .asyncMap(
          (ChangeCategoryActionStart action) {
            return _api.getPhotos(page: 1, query: action.category);
          },
        )
        .map((List<Photo> photos) => ChangeCategoryAction.successful(photos: photos))
        .onErrorReturnWith(
          (Object error, StackTrace stackTrace) {
            return ChangeCategoryAction.error(error: error, stackTrace: stackTrace);
          },
        );
  }
}
