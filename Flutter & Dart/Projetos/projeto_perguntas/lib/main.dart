import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

main() => runApp(new PerguntaApp());

// Classe que controla o estado do Widget
// Com 'underline' o método/função/atributo fica PRIVADO
class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  // setState atualiza o estado
  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
  }

  //Cabeçalho do APP
  Widget build(BuildContext context) {
    // Lista de Perguntas e respostas
    final List<Map<String, Object>> perguntas = [
      {
        'texto': 'Qual é a sua cor favorita?',
        'respostas': ['Preto', 'Vermelho', 'Verde', 'Branco']
      },
      {
        'texto': 'Qual é o seu animal favorito?',
        'respostas': ['Coelho', 'Tartaruga', 'Cachorro', 'Gato']
      },
      {
        'texto': 'Qual seu instrutor favorito',
        'respostas': ['Maria', 'João', 'Leo', 'Pedro']
      }
    ];

    List<String> respostas = perguntas[_perguntaSelecionada]['respostas'];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        // Corpo com a Pergunta Selecionada
        body: Column(
          children: <Widget>[
            Questao(perguntas[_perguntaSelecionada]['texto']),
            // Botões com as Respostas
            ...respostas.map((t) => Resposta(t, _responder)).toList(),
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
