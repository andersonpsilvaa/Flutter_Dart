import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io';

class AdaptativeTextField extends StatelessWidget {
  final TextEditingController controller;
  final Function onSubmitted;
  final String labelText;
  final TextInputType keyBoardType;

  AdaptativeTextField({
    this.controller,
    this.onSubmitted,
    this.labelText,
    this.keyBoardType = TextInputType.text,
  });

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? Padding(
            padding: const EdgeInsets.all(8.0),
            child: CupertinoTextField(
              controller: controller,
              onSubmitted: onSubmitted,
              keyboardType: keyBoardType,
              placeholder: labelText,
              padding: EdgeInsets.symmetric(
                horizontal: 6,
                vertical: 12,
              ),
            ),
          )
        : TextField(
            controller: controller,
            onSubmitted: onSubmitted,
            keyboardType: keyBoardType,
            decoration: InputDecoration(
              labelText: labelText,
            ),
          );
  }
}
