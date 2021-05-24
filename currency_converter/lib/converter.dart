import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:forex/forex.dart';
import 'package:http/http.dart' as http;

class Converter extends StatefulWidget {
  const Converter({Key key}) : super(key: key);

  @override
  _ConverterState createState() => _ConverterState();
}

class _ConverterState extends State<Converter> {
  double _convertedAmount = 0;
  double _rate = 0.2;
  bool _isValid = true;
  final _toCurrency = 'EUR';
  final _fromCurrency = 'RON';

  TextEditingController _controller = TextEditingController();

  void _reset() {
    setState(() {
      _controller.clear();
      _convertedAmount = 0;
      _isValid = true;
    });
  }

  bool _isNumeric(String str) {
    if (str == null) {
      return false;
    }
    return double.tryParse(str) != null;
  }

  void _convert() {
    setState(() {
      final value = _controller.text;

      if (!_isNumeric(value) && value != '') {
        _isValid = false;
        return;
      }

      _isValid = true;

      double fact = 0.0;
      if (value != '') {
        fact = double.parse(value);
      }
      _convertedAmount = _rate * fact;
    });
  }

  void _updateRate() async {
    print("updating rate...");
    final ans = await http.get(Uri.parse('https://www.ecb.europa.eu/stats/eurofxref/eurofxref-daily.xml'),
        headers: {"Accept": "application/json", "Access-Control_Allow_Origin": "*"});

    print(ans);

    Map<String, num> quotes =
        await Forex.fx(quoteProvider: QuoteProvider.yahoo, base: 'USD', quotes: <String>['EUR', 'JPY']);

    print('Number of quotes retrieved: ${quotes.keys.length}.');
    print('Exchange rate USDEUR: ${quotes['USDEUR']}.');
    print('Exchange rate USDJPY: ${quotes['USDJPY']}.');

    // nu merge niciuna sry
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 7,
              child: TextField(
                controller: _controller,
                onSubmitted: (value) => _convert(),
                decoration: InputDecoration(
                  hintText: 'Enter amount in ' + _fromCurrency,
                  // contentPadding: EdgeInsets.symmetric(horizontal: 6),
                  errorText: _isValid ? null : 'Input a number',
                  suffixIcon: _controller.text.length > 0
                      ? IconButton(
                          onPressed: _reset,
                          icon: Icon(Icons.clear),
                        )
                      : null,
                ),
              ),
            ),
            TextButton(onPressed: () => _convert(), child: Text('Convert'))
          ],
        ),
        SizedBox(height: 50),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(onPressed: _updateRate, child: Text('Update rate')),
            _controller.text.length > 0 && _convertedAmount != 0
                ? Text(
                    _convertedAmount.toStringAsFixed(2) + ' ' + _toCurrency,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                : Container(),
          ],
        ),
      ],
    );
  }
}
