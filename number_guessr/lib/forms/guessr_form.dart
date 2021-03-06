import 'package:flutter/material.dart';
import 'package:number_guessr/forms/simple_text_form.dart';
import 'package:number_guessr/pages/guessr_page.dart';

import '../config.dart';

class GuesserForm extends StatefulWidget {
  const GuesserForm({Key? key, this.interval = const MyInterval()}) : super(key: key);

  final MyInterval interval;

  @override
  _GuesserFormState createState() => _GuesserFormState();
}

class _GuesserFormState extends State<GuesserForm> {
  Color _color = Colors.white;
  int _number = 0;
  String? _ans;
  String? _hint;
  bool _guessed = false;

  final TextStyle _textStyle = const TextStyle(
    fontSize: 30,
    color: Colors.grey,
  );

  void onError(int value) {
    setState(() {
      _color = Colors.redAccent;
    });
  }

  void onSuccess(int value) {
    final int diff = value - _number;
    String? str;
    final String ans = '$value';
    if (diff != 0) {
      str = 'Try ';
      if (diff < 0) {
        str += 'higher';
      } else if (diff > 0) {
        str += 'lower';
      }
    }

    if (diff == 0) {
      _showDialog();
    }

    setState(() {
      _color = Colors.white;
      _hint = str;
      _ans = ans;
      _guessed = diff == 0;
    });
  }

  void resetNumber() {
    print('Reset');
    setState(() {
      _number = widget.interval.getRandomNumber();
      _guessed = false;
      _hint = null;
      _ans = null;
    });
  }

  void _showDialog() {
    showDialog<Widget>(
        context: context,
        builder: (_) => AlertDialog(
              title: const Text('You guessed right'),
              content: Text('It was ${_ans!}'),
              actions: <Widget>[
                ElevatedButton(
                  child: const Text('Try again!'),
                  onPressed: () {
                    Navigator.of(context).pop();
                    resetNumber();
                  },
                ),
                ElevatedButton(
                  child: const Text('OK'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                )
              ],
            ));
  }

  @override
  void initState() {
    super.initState();
    resetNumber();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          if (_hint == null)
            Container()
          else
            Column(
              children: <Widget>[
                Text(
                  'You tried ${_ans!}.',
                  style: _textStyle,
                ),
                Text(
                  _hint!,
                  style: _textStyle,
                ),
              ],
            ),
          Card(
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: _color,
                width: 2,
              ),
            ),
            elevation: 5.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Space,
                Text(
                  'Try a number!',
                  style: _textStyle,
                ),
                SmallSpace,
                SimpleTextForm(
                  onError: onError,
                  onSuccess: _guessed
                      ? (int x) {
                          resetNumber();
                        }
                      : onSuccess,
                  buttonText: _guessed ? 'Reset' : 'Submit',
                ),
                SmallSpace,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
