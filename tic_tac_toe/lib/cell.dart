import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

typedef OnTap = int Function();

class Cell extends StatefulWidget {
  const Cell({Key? key, required this.onTap, required this.player}) : super(key: key);
  final OnTap onTap;
  final int player;

  @override
  _CellState createState() => _CellState();
}

class _CellState extends State<Cell> with SingleTickerProviderStateMixin {
  late bool _isEmpty;
  Color _color = Colors.white;
  late AnimationController _controller;

  Color getColor(int index) {
    return index == 0 ? Colors.red : Colors.green;
  }

  void setColor(int index) {
    setState(() {
      _color = getColor(index);
      _isEmpty = false;
    });
  }

  @override
  void initState() {
    super.initState();

    if (widget.player >= 0) {
      setColor(widget.player);
    } else {
      setState(() {
        _isEmpty = true;
      });
    }

    _controller = AnimationController(vsync: this, duration: const Duration(milliseconds: 300));
    _controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (!_isEmpty) {
          return;
        }

        final int currPlayer = widget.onTap();
        setColor(currPlayer);

        if (!_controller.isCompleted) {
          _controller.forward();
        }
      },
      child: Container(
        color: Color.lerp(Colors.white, _color, _controller.value),
      ),
    );
  }
}
