import 'dart:math';

import 'package:flutter/material.dart';

import 'Resultado.dart';

class Jogar extends StatefulWidget {
  @override
  _JogarState createState() => _JogarState();
}

class _JogarState extends State<Jogar> {
  void _exibirResultado() {
    var itens = ["images/moeda_cara.png", "images/moeda_coroa.png"];
    int _numeroAleatorio = Random().nextInt(2);

    print("Valor gerado: " + itens[_numeroAleatorio].toString());

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Resultado(itens[_numeroAleatorio]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset("images/logo.png"),
            GestureDetector(
              onTap: _exibirResultado,
              child: Image.asset("images/botao_jogar.png"),
            ),
          ],
        ),
      ),
    );
  }
}
