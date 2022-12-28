import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class LoadingButton extends StatelessWidget {
  final bool busy;
  final bool invert;
  final VoidCallback func;
  final String text;

  LoadingButton(
      {super.key,
      required this.busy,
      required this.invert,
      required this.func,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return busy
        ? Container(
            alignment: Alignment.center,
            height: 50,
            child: CircularProgressIndicator(
              backgroundColor:
                  invert ? Theme.of(context).primaryColor : Colors.white,
            ),
          )
        : Container(
            margin: const EdgeInsets.all(30),
            width: double.infinity,
            height: 60,
            decoration: BoxDecoration(
                color: invert ? Theme.of(context).primaryColor : Colors.white,
                borderRadius: BorderRadius.circular(50)),
            child: TextButton(
                onPressed: func,
                child: Text(
                  text,
                  style: TextStyle(
                      color: invert
                          ? Colors.white
                          : Theme.of(context).primaryColor,
                      fontSize: 30,
                      fontFamily: 'Big Shoulders Display'),
                )),
          );
  }
}
