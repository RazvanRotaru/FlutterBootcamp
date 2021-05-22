import 'package:flutter/material.dart';
import 'package:number_guessr/config.dart';

class SimpleTextForm extends StatefulWidget {
  final void Function(int number) onSuccess;
  final void Function(int errCode) onError;
  final String buttonText;

  static void _dummyFunc(int number) {}

  const SimpleTextForm(
      {Key? key,
      this.onSuccess: _dummyFunc,
      this.onError: _dummyFunc,
      this.buttonText: 'Submit'})
      : super(key: key);

  @override
  _SimpleTextFormState createState() => _SimpleTextFormState();
}

class _SimpleTextFormState extends State<SimpleTextForm> {
  final _form = GlobalKey<FormState>();
  final _controller = TextEditingController();

  bool isNumber(String? value) {
    return ((value != null) && (int.tryParse(value) != null)) ||
        (widget.buttonText == 'Reset');
  }

  void submit() {
    final isValid = _form.currentState?.validate();
    if (isValid == null || !isValid) {
      widget.onError(0);
    } else {
      // Could've I used only _form to extract the information below?
      widget.onSuccess(int.tryParse(_controller.text) ?? -1);
    }
    _controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _form,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SmallSpace,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextFormField(
                keyboardType: TextInputType.number,
                controller: _controller,
                validator: (String? value) {
                  return !isNumber(value)
                      ? 'Please enter a valid number!'
                      : null;
                },
              ),
            ),
            Space,

            // HOW TO PASS A BUTTON TYPE THROUGH CONSTRUCTOR BUT KEEPING THE SAME onPressed Callback ?
            SizedBox(
              width: 100,
              height: 40,
              child: ElevatedButton(
                onPressed: submit, // keep this
                child: Text(widget.buttonText),
              ),
            ),
            SmallSpace,
          ],
        ),
      ),
    );
  }
}
