import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const SizedBox(height: 80),
        Image.asset('assets/images/aog-white.png',
            height: 80, fit: BoxFit.contain),
        const SizedBox(height: 30),
        const Text(
          'Álcool ou Gasolina',
          style: TextStyle(
              color: Colors.white,
              fontSize: 35,
              fontFamily: 'Big Shoulders Display'),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
