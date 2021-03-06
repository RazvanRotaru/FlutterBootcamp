import 'package:flutter/material.dart';
import 'package:number_guessr/config.dart';
import 'package:number_guessr/forms/shape_form.dart';

class ShapePage extends StatelessWidget {
  const ShapePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const <Widget>[
        Space,
        Text(
          'Input a number to see if it is square, cube or triangular',
          style: TextStyle(fontSize: 20),
        ),
        Space,
        ShapeForm(),
        SmallSpace,
      ],
    );
  }
}
