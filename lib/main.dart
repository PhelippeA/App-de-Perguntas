import 'package:Proj_Ytb/questao.dart';
import 'package:Proj_Ytb/resposta.dart';
import 'package:flutter/material.dart';

main() => runApp(new PerguntaApp());

class PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;
  void responder() {
    setState(() {
      perguntaSelecionada++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, Object>> perguntas = [
      {
        'texto ': 'Qual sua cor predileta ?',
        'respostas': ['Preto', 'Vermelho', 'Verde', 'Branco']
      },
      {
        'texto ': 'Qual seu animal preferido ?',
        'respostas': ['Gato', 'Cachorro', 'Leão', 'Pato']
      },
      {
        'texto ': 'Qual sua comida favorita ?',
        'respostas': ['Strogonoff', 'Macarrão', 'Salada', 'Churrasco']
      }
    ];

    List<String> respostas = perguntas[perguntaSelecionada]['respostas'];

    return new MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: <Widget>[
            Questao(perguntas[perguntaSelecionada]['texto']),
            ...respostas.map((t) => Resposta(t, responder)).toList()
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  PerguntaAppState createState() {
    return PerguntaAppState();
  }
}
