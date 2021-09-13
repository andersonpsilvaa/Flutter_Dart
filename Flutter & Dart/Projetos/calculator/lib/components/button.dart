import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  static const DARK = Color.fromRGBO(82, 82, 82, 1);
  static const DEFAULT = Color.fromRGBO(112, 112, 112, 1);
  static const OPERATION = Color.fromRGBO(250, 158, 13, 1);

  String text = "";
  bool big = false;
  Color color;
  void Function(String) cb;

  Button({
    this.text = '',
    this.big = false,
    this.color = DEFAULT,
    this.cb,
  });

  Button.big({
    this.text = '',
    this.big = true,
    this.color = DEFAULT,
    this.cb,
  });

  Button.operation({
    this.text = '',
    this.big = false,
    this.color = OPERATION,
    this.cb,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: big ? 2 : 1,
      child: ElevatedButton(
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.w200,
          ),
        ),
        onPressed: () => cb(text),
      ),
    );
  }
}
