import 'package:flutter/material.dart';
import 'package:untitled/converter.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Currency Converter')),
      ),
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.7,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Image.network('https://image.flaticon.com/icons/png/512/2248/2248019.png'),
              const SizedBox(height: 50),
              const Converter(),
            ],
          ),
        ),
      ),
    );
  }
}
