import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'cell.dart';

class Game extends StatefulWidget {
  const Game({Key? key}) : super(key: key);

  @override
  _GameState createState() => _GameState();
}

class _GameState extends State<Game> {
  late List<int> elements = List<int>.generate(9, (int index) => -1);
  int player = 0;

  bool checkLines({required int dx, required int dy}) {
    for (int i = 0; i < 3 * dx; i += dx) {
      if (elements[i] < 0) {
        continue;
      }
      final int _currPlayer = elements[i];
      int count = 0;
      for (int j = 0; j < 3 * dy; j += dy) {
        if (elements[i + j] == _currPlayer) {
          count++;
        }
      }
      if (count == 3) {
        return true;
      }
    }
    return false;
  }

  bool checkRows() {
    return checkLines(dx: 3, dy: 1);
  }

  bool checkCols() {
    return checkLines(dx: 1, dy: 3);
  }

  bool checkDiags() {
    // player on first diagonal
    final int first = elements[0];
    int firstCount = 1;
    // player on first second
    final int second = elements[2];
    int secondCount = 1;

    if ((first < 0) && (second < 0)) {
      return false;
    }
    for (int i = 1; i < 3; i++) {
      if (elements[i * 3 + i] == first) {
        firstCount++;
      }
      if (elements[i * 3 + 2 - i] == second) {
        secondCount++;
      }
    }
    return (firstCount == 3) || (secondCount == 3);
  }

  bool isFull() {
    for (int i = 0; i < 9; i++) {
      if (elements[i] < 0) {
        return false;
      }
    }
    return true;
  }

  void checkGame() {
    if (checkRows() || checkCols() || checkDiags()) {
      _showDialog(title: 'You won', content: 'Against yourself, psych');
    }
    else if (isFull()){
      _showDialog(title: 'You lost', content: 'How did you managed that?!');
    }
  }

  void _reset() {
    setState(() {
      player = 0;
      elements = List<int>.filled(9, -1);
    });
  }

  void _showDialog({required String title, required String content}) {
    showDialog<Widget>(
      context: context,
      builder: (_) => AlertDialog(
        title: Text(title),
        content: Text(content),
        actions: <Widget>[
          ElevatedButton(
            child: const Text('Try again!'),
            onPressed: () {
              Navigator.of(context).pop();
              _reset();
            },
          ),
          ElevatedButton(
            child: const Text('OK'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 16.0,
            crossAxisSpacing: 16.0,
          ),
          itemCount: elements.length,
          padding: const EdgeInsets.all(16.0),
          itemBuilder: (BuildContext context, int index) {
            return Cell(
              player: elements[index],
              onTap: () {
                final int currPlayer = player;
                setState(() {
                  elements[index] = player;
                  player = (player + 1) % 2;
                });
                checkGame();
                return currPlayer;
              },
            );
          },
        ),
      ),
    );
  }
}
