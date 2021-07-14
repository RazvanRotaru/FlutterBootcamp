import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:weather_app/actions/get_location.dart';
import 'package:weather_app/data/location_api.dart';
import 'package:weather_app/data/weather_api.dart';
import 'package:weather_app/epics/location_epic.dart';
import 'package:weather_app/redux/redux.dart';
import 'package:weather_app/view/home_page.dart';
import 'package:weather_app/view/location_page.dart';
import 'package:weather_app/view/weather_page.dart';

import 'epics/weather_epic.dart';
import 'models/app_state.dart';

void main() {
  final LocationEpic locationEpic = LocationEpic(api: LocationApi());
  final WeatherEpic weatherEpic = WeatherEpic(api: WeatherApi());

  final Store<AppState> store = Store<AppState>(
    reducer,
    initialState: AppState(),
    middleware: <Middleware<AppState>>[
      EpicMiddleware<AppState>(locationEpic.epics),
      EpicMiddleware<AppState>(weatherEpic.epics),
    ],
  );

  store.dispatch(GetLocationAction());
  runApp(MyApp(
    store: store,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key, required this.store}) : super(key: key);

  final Store<AppState> store;

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        home: const HomePage(),
        // theme: ThemeData.dark(),
        routes: <String, WidgetBuilder>{
          '/location': (BuildContext context) {
            return const LocationPage();
          },
          '/weather': (BuildContext context) {
            return const WeatherPage();
          }
        },
      ),
    );
  }
}
