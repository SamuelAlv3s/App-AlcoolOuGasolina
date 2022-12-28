import 'package:alcool_gasolina/widgets/logo.widget.dart';
import 'package:alcool_gasolina/widgets/submit-form.widget.dart';
import 'package:alcool_gasolina/widgets/success.widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var gasCtrl = MoneyMaskedTextController();

  var alcCtrl = MoneyMaskedTextController();

  var _busy = false;

  var _completed = false;

  var _resultText = 'Compensa utilizar álcool';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(children: <Widget>[
        Logo(),
        _completed
            ? Success(reset: reset, result: _resultText)
            : SubmitForm(
                gasCtrl: gasCtrl,
                alcCtrl: alcCtrl,
                busy: _busy,
                submitFunc: calculate),
      ]),
    );
  }

  Future calculate() {
    double alc =
        double.parse(alcCtrl.text.replaceAll(RegExp(r'[,.]'), '')) / 100;
    double gas =
        double.parse(gasCtrl.text.replaceAll(RegExp(r'[,.]'), '')) / 100;

    double res = alc / gas;

    setState(() {
      _completed = false;
      _busy = true;
    });

    return Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        if (res >= 0.7) {
          _resultText = 'Compensa utilizar Gasolina';
        } else {
          _resultText = 'Compensa utilizar Álcool';
        }
        _completed = true;
        _busy = false;
      });
    });
  }

  reset() {
    setState(() {
      alcCtrl = MoneyMaskedTextController();
      gasCtrl = MoneyMaskedTextController();
      _completed = false;
      _busy = false;
    });
  }
}
