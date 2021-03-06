import 'package:flutter/material.dart';

main() => runApp(new PerguntaApp());

// Classe que controla o estado do Widget
// Com 'underline' o método/função/atributo fica PRIVADO
class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSeleciona = 0;

  // setState atualiza o estado
  void _responder() {
    setState(() {
      _perguntaSeleciona++;
    });
    print(_perguntaSeleciona);
  }

  // Lista de Perguntas
  final perguntas = [
    'Qual é a sua cor favorita?',
    'Qual é o seu animal favorito?'
  ];

  //Cabeçalho do APP
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        // Corpo com a Pergunta Selecionada
        body: Column(
          children: [
            Text(perguntas[_perguntaSeleciona]),
            // Botões com as Respostas
            RaisedButton(
              child: Text('Resposta 1'),
              onPressed: _responder,
            ),
            RaisedButton(
              child: Text('Resposta 2'),
              onPressed: _responder,
            ),
            RaisedButton(
              child: Text('Resposta 3'),
              onPressed: _responder,
            )
          ],
        ),
      ),
    );
  }
}

// Classe Principal que gerencia a classe dos estados
class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
