import 'package:alcool_gasolina/widgets/load-button.widget.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class Success extends StatelessWidget {
  final String result;
  final VoidCallback reset;

  const Success({
    super.key,
    required this.result,
    required this.reset,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.8),
          borderRadius: BorderRadius.circular(25)),
      child: Column(children: <Widget>[
        SizedBox(
          height: 30,
        ),
        Text(result,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 40,
                fontFamily: 'Big Shoulders Display')),
        SizedBox(
          height: 20,
        ),
        LoadingButton(
            busy: false, invert: true, func: reset, text: 'Calcular Novamente')
      ]),
    );
  }
}
