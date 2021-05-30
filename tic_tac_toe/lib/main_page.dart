import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'game.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('TicTacToe')),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisSize: MainAxisSize.max,
        children: const <Widget>[
          SizedBox(
            height: 20,
          ),
          Text("You will play by yourself, I couldn't be bothered"),
          SizedBox(
            height: 20,
          ),
          Game(),
        ],
      ),
    );
  }
}
