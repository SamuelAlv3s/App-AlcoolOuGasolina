import 'dart:ffi';

import 'package:alcool_gasolina/widgets/input.widget.dart';
import 'package:alcool_gasolina/widgets/load-button.widget.dart';
import 'package:alcool_gasolina/widgets/logo.widget.dart';
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

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(children: <Widget>[
        Logo(),
        Container(
          margin: EdgeInsets.all(30),
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.8),
              borderRadius: BorderRadius.circular(25)),
          child: Column(children: <Widget>[
            SizedBox(
              height: 30,
            ),
            Text('Compensa utilizar álcool',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 40,
                    fontFamily: 'Big Shoulders Display')),
            SizedBox(
              height: 20,
            ),
            LoadingButton(
                busy: false,
                invert: true,
                func: () {},
                text: 'Calcular Novamente')
          ]),
        ),
        Input(label: 'Gasolina', ctrl: _gasCtrl),
        Input(label: 'Álcool', ctrl: _alcCtrl),
        LoadingButton(busy: true, invert: false, func: () {}, text: 'Calcular')
      ]),
    );
  }
}
