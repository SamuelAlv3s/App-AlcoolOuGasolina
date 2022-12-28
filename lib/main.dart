import 'package:alcool_gasolina/widgets/input.widget.dart';
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
        const Logo(),
        Input(label: 'Gasolina', ctrl: _gasCtrl),
        Input(label: 'Álcool', ctrl: _alcCtrl),
        Container(
          margin: const EdgeInsets.all(30),
          height: 60,
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.8),
              borderRadius: BorderRadius.circular(50)),
          child: TextButton(
            child: Text(
              'Calcular',
              style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 30,
                  fontFamily: 'Big Shoulders Display'),
            ),
            onPressed: () {},
          ),
        )
      ]),
    );
  }
}
