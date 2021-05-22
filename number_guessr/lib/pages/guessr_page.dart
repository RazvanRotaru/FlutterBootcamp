import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:number_guessr/forms/guessr_form.dart';

import '../config.dart';

class MyInterval {
  final int min;
  final int max;

  static Random? _random;

  const MyInterval({this.min: 0, this.max: 100});

  int getRandomNumber() {
    if (_random == null)
      _random = Random();

    int nr = min + _random!.nextInt(max - min);
    print("Chosen number is $nr");
    return nr;
  }
}

class GuesserPage extends StatefulWidget {
  final MyInterval interval;

  const GuesserPage({Key? key, this.interval: const MyInterval()})
      : super(key: key);

  @override
  _GuesserPageState createState() => _GuesserPageState();
}

class _GuesserPageState extends State<GuesserPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Space,
        Text(
          'I\'m thinking of a number between ${widget.interval.min} and ${widget.interval.max}.',
          style: TextStyle(fontSize: 30),
        ),
        SmallSpace,
        Text(
          'It\'s your turn to guess my number!',
          style: TextStyle(fontSize: 20),
        ),

        Space,
        GuesserForm(),
      ],
    );
  }
}
