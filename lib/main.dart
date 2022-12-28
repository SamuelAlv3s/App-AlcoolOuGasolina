import 'dart:ffi';

import 'package:alcool_gasolina/widgets/input.widget.dart';
import 'package:alcool_gasolina/widgets/load-button.widget.dart';
import 'package:alcool_gasolina/widgets/logo.widget.dart';
import 'package:alcool_gasolina/widgets/submit-form.widget.dart';
import 'package:alcool_gasolina/widgets/success.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alcool ou Gasolina',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final _gasCtrl = MoneyMaskedTextController();
  final _alcCtrl = MoneyMaskedTextController();

  HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(children: <Widget>[
        Logo(),
        SubmitForm(
            gasCtrl: _gasCtrl,
            alcCtrl: _alcCtrl,
            busy: false,
            submitFunc: () {}),
        Success(reset: () {}, result: 'Compensa utilizar X'),
      ]),
    );
  }
}
