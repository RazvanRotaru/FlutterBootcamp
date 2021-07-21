import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:photo_app/models/index.dart';
import 'package:redux/redux.dart';

class InvalidCategoryContainer extends StatelessWidget {
  const InvalidCategoryContainer({Key? key, required this.builder}) : super(key: key);

  final ViewModelBuilder<bool> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, bool>(
      converter: (Store<AppState> store) {
        return store.state.photos.isEmpty && store.state.currentCategory.isNotEmpty;
      },
      builder: builder,
    );
  }
}
