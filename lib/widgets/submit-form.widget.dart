import 'package:alcool_gasolina/widgets/input.widget.dart';
import 'package:alcool_gasolina/widgets/load-button.widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class SubmitForm extends StatelessWidget {
  final MoneyMaskedTextController gasCtrl;
  final MoneyMaskedTextController alcCtrl;
  final bool busy;
  final VoidCallback submitFunc;

  const SubmitForm(
      {super.key,
      required this.gasCtrl,
      required this.alcCtrl,
      required this.busy,
      required this.submitFunc});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 30, right: 30),
          child: Input(label: 'Gasolina', ctrl: gasCtrl),
        ),
        Padding(
          padding: EdgeInsets.only(left: 30, right: 30),
          child: Input(label: 'Álcool', ctrl: alcCtrl),
        ),
        SizedBox(height: 25),
        LoadingButton(
            busy: busy, invert: false, func: submitFunc, text: 'Calcular')
      ],
    );
  }
}
