import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:photo_app/models/index.dart';
import 'package:redux/redux.dart';

class ErrorContainer extends StatelessWidget {
  const ErrorContainer({Key? key, required this.builder}) : super(key: key);

  final ViewModelBuilder<String?> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, String?>(
      converter: (Store<AppState> store) {
        return store.state.errorMessage;
      },
      builder: builder,
    );
  }
}
