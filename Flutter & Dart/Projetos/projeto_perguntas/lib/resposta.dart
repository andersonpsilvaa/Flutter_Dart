import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  Resposta(this.texto, this.quandoSelecionado);

  final void Function() quandoSelecionado;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: (RaisedButton(
        textColor: Colors.white,
        color: Colors.blue,
        child: Text(texto),
        onPressed: quandoSelecionado,
      )),
    );
  }
}
