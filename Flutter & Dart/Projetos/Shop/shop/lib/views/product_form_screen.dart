import 'package:flutter/material.dart';

class ProductFormScreen extends StatefulWidget {
  @override
  _ProductFormScreen createState() => _ProductFormScreen();
}

class _ProductFormScreen extends State<ProductFormScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formulário Produto'),
      ),
    );
  }
}
