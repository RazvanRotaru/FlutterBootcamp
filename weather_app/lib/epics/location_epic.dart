import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';
import 'package:weather_app/actions/get_location.dart';
import 'package:weather_app/data/location_api.dart';
import 'package:weather_app/models/app_state.dart';
import 'package:weather_app/models/location.dart';

class LocationEpic {
  LocationEpic({required LocationApi api}) : _locationApi = api;

  final LocationApi _locationApi;

  Epic<AppState> get epics => combineEpics<AppState>(<Epic<AppState>>[
        TypedEpic<AppState, GetLocationAction>(_getLocation),
      ]);

  Stream<GetLocationResponse> _getLocation(Stream<GetLocationAction> actions, EpicStore<AppState> store) {
    return actions
        .asyncMap((GetLocationAction action) => _locationApi.getLocation())
        .map<GetLocationResponse>((Location location) => GetLocationSuccessful(location))
        .onErrorReturnWith((Object error, StackTrace stackTrace) => GetLocationError(error));
  }
}
