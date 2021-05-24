import 'package:flutter/material.dart';
import 'package:number_guessr/pages/guessr_page.dart';
import 'package:number_guessr/pages/shape_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  final List<Widget> _pages = <Widget>[
    Center(
      //
      // How does one scale a text with the screen size?
      child: FittedBox(
        fit: BoxFit.fitWidth,
        child: Column(
          children: const <Widget>[
            Text('Welcome to Numberino!'),
            Text('Prepare to be amazed..........'),
          ],
        ),
      ),
    ),
    const GuesserPage(),
    const ShapePage(),
  ];

  void changeTab(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Numberino')),
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: changeTab,
        currentIndex: _currentIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.adjust_outlined),
            label: 'Guessr',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.auto_awesome_mosaic),
            label: 'Shapes',
          ),
        ],
      ),
    );
  }
}
