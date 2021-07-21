import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:photo_app/data/photos_api.dart';
import 'package:photo_app/epics/photos_epic.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';

import 'actions/index.dart';
import 'models/index.dart';
import 'presentation/home_page.dart';
import 'reducer/reducer.dart';

void main() {
  final PhotosEpic photosEpic = PhotosEpic(api: PhotosApi());

  final Store<AppState> store = Store<AppState>(
    reducer,
    initialState: AppState(),
    middleware: <Middleware<AppState>>[
      EpicMiddleware<AppState>(photosEpic.epics),
    ],
  );

  store.dispatch(const GetPhotosAction());
  runApp(MyApp(store: store));
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
        theme: ThemeData.dark(),
      ),
    );
  }
}
