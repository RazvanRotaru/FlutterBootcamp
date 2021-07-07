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
  Color _color = Colors.white;
  late AnimationController _controller;

  Color getColor(int index) {
    return index == 0 ? Colors.red : Colors.green;
  }

  void setColor(int index) {
    setState(() {
      _color = getColor(index);
    });
  }

  @override
  void initState() {
    super.initState();

    if (widget.player >= 0) {
      setColor(widget.player);
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
        final int currPlayer = widget.onTap();
        if (currPlayer < 0) {
          return;
        }

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
