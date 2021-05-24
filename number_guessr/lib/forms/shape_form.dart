import 'dart:math';

import 'package:flutter/material.dart';
import 'package:number_guessr/forms/simple_text_form.dart';

class ShapeForm extends StatefulWidget {
  const ShapeForm({Key? key}) : super(key: key);

  @override
  _ShapeFormState createState() => _ShapeFormState();
}

class _ShapeFormState extends State<ShapeForm> {
  void onSuccess(int value) {
    final List<String> types = <String>[];

    if (isSquare(value)) {
      types.add('Square');
    }
    if (isTriangular(value)) {
      types.add('Triangular');
    }
    if (isCube(value)) {
      types.add('Cube');
    }

    final String message = _typesToString(types);
    _showDialog(value, message);
  }

  bool isSquare(int number) {
    final num root = sqrt(number);

    return root is int || root == root.roundToDouble();
  }

  bool isTriangular(int number) {
    int sum = 0;

    for (int i = 1;; ++i) {
      sum += i;

      if (sum > number) {
        return false;
      }
      if (sum == number) {
        return true;
      }
    }
  }

  bool isCube(int number) {
    int cube;

    for (int i = 1;; ++i) {
      cube = i * i * i;

      if (cube > number) {
        return false;
      }
      if (cube == number) {
        return true;
      }
    }
  }

  String _typesToString(List<String> types) {
    print(types);
    if (types.isEmpty) {
      return 'neither Square or Cube or Triangular';
    }
    if (types.length == 1) {
      return types[0];
    }

    return types.join(' and ');
  }

  void _showDialog(int number, String text) {
    showDialog<Widget>(
        context: context,
        builder: (_) => AlertDialog(
              title: Text('$number'),
              content: Text('Number $number is $text'),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return SimpleTextForm(
      onSuccess: onSuccess,
    );
  }
}
