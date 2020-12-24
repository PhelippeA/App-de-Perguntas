import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() quandoReinicarQuestionario;

  Resultado(this.pontuacao, this.quandoReinicarQuestionario);

  String get fraseResultado {
    if (pontuacao < 8) return 'Melhore...';
    if (pontuacao < 12) return 'Hmm... Nada mal';
    if (pontuacao < 16)
      return 'Top demais amigo';
    else
      return 'Fino do fino!';
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Text(
            fraseResultado,
            style: TextStyle(fontSize: 35, color: Colors.cyan),
          ),
        ),
        FlatButton(
          onPressed: quandoReinicarQuestionario,
          textColor: Colors.blue[200],
          child: Text(
            'Reiniciar ?',
            style: TextStyle(fontSize: 20),
          ),
        )
      ],
    );
  }
}
