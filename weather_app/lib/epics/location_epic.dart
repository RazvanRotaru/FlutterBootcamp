import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';
import 'package:weather_app/actions/app_actions.dart';
import 'package:weather_app/actions/index.dart';
import 'package:weather_app/data/location_api.dart';
import 'package:weather_app/models/index.dart';

class LocationEpic {
  LocationEpic({required LocationApi api}) : _locationApi = api;

  final LocationApi _locationApi;

  Epic<AppState> get epics {
    return combineEpics<AppState>(<Epic<AppState>>[
      TypedEpic<AppState, GetLocationActionStart>(_getLocation),
    ]);
  }

  Stream<AppAction> _getLocation(Stream<GetLocationActionStart> actions, EpicStore<AppState> store) {
    return actions //
        .asyncMap((GetLocationActionStart action) => _locationApi.getLocation())
        .map((Location location) => GetLocationAction.successful(location: location))
        .onErrorReturnWith(
      (Object error, StackTrace stackTrace) {
        return GetLocationAction.error(error: error, stackTrace: stackTrace);
      },
    );
  }
}
