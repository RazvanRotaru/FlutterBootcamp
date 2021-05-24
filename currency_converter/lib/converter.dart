import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Converter extends StatefulWidget {
  const Converter({Key? key}) : super(key: key);

  @override
  _ConverterState createState() => _ConverterState();
}

class _ConverterState extends State<Converter> {
  double _convertedAmount = 0;
  final double _rate = 0.2;
  bool _isValid = true;
  final String _toCurrency = 'EUR';
  final String _fromCurrency = 'RON';

  final TextEditingController _controller = TextEditingController();

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
      final String value = _controller.text;

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

  // void _updateRate() async {
  //   print("updating rate...");
  //   final http.Response ans = await http.get(Uri.parse('https://www.ecb.europa.eu/stats/eurofxref/eurofxref-daily.xml'),
  //       headers: {'Accept': 'application/json', 'Access-Control_Allow_Origin': '*'});
  //
  //   print(ans);
  //
  //   Map<String, num> quotes =
  //       await Forex.fx(quoteProvider: QuoteProvider.yahoo, base: 'USD', quotes: <String>['EUR', 'JPY']);
  //
  //   print('Number of quotes retrieved: ${quotes.keys.length}.');
  //   print('Exchange rate USDEUR: ${quotes['USDEUR']}.');
  //   print('Exchange rate USDJPY: ${quotes['USDJPY']}.');
  //
  //   // nu merge niciuna sry
  // }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              flex: 7,
              child: TextField(
                controller: _controller,
                onSubmitted: (String value) => _convert(),
                decoration: InputDecoration(
                  hintText: 'Enter amount in ' + _fromCurrency,
                  // contentPadding: EdgeInsets.symmetric(horizontal: 6),
                  errorText: _isValid ? null : 'Input a number',
                  suffixIcon: _controller.text.isNotEmpty
                      ? IconButton(
                          onPressed: _reset,
                          icon: const Icon(Icons.clear),
                        )
                      : null,
                ),
              ),
            ),
            TextButton(onPressed: () => _convert(), child: const Text('Convert'))
          ],
        ),
        const SizedBox(height: 50),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            TextButton(onPressed: () {}, child: const Text('Update rate')),
            if (_controller.text.isNotEmpty && _convertedAmount != 0)
              Text(
                _convertedAmount.toStringAsFixed(2) + ' ' + _toCurrency,
                style: const TextStyle(fontWeight: FontWeight.bold),
              )
            else
              Container(),
          ],
        ),
      ],
    );
  }
}
