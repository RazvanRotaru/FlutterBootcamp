import 'dart:math';

import 'package:flutter/material.dart';
import 'package:number_guessr/forms/guessr_form.dart';

import '../config.dart';

class MyInterval {
  const MyInterval({this.min = 0, this.max = 100});

  final int min;
  final int max;

  static Random? _random;

  int getRandomNumber() {
    _random ??= Random();

    final int nr = min + _random!.nextInt(max - min);
    print('Chosen number is $nr');
    return nr;
  }
}

class GuesserPage extends StatefulWidget {
  const GuesserPage({Key? key, this.interval = const MyInterval()}) : super(key: key);

  final MyInterval interval;

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
          "I'm thinking of a number between ${widget.interval.min} and ${widget.interval.max}.",
          style: const TextStyle(fontSize: 30),
        ),
        SmallSpace,
        const Text(
          "It's your turn to guess my number!",
          style: TextStyle(fontSize: 20),
        ),
        Space,
        const GuesserForm(),
      ],
    );
  }
}
