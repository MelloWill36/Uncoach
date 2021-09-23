import 'package:flutter/material.dart';
import 'dart:math';

void main(){
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var _frases = [
    "Nenhum obstáculo é grande demais para quem desiste!",
    "O caminho é longo, mas a derrota é certa!",
    "Não desanime com a derrota de hoje. Amanhã tem mais!",
    "É só uma fase ruim, logo ai piorar!",
    "Pare de achar que tudo vai dar errado e comece a ter certeza!",
    "Nunca foi azar, sempre foi incompetência!",
    "Acreditar que você pode, já é meio caminho errado!",
    "Coisas ruins se vão para que piores possam vir!"
  ];

  var _fraseGerada = "Clique abaixo para gerar uma frase!";

  void _gerarFrase(){


    var numeroSorteado = Random().nextInt( _frases.length );

    setState(() {
      _fraseGerada = _frases[ numeroSorteado ];
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do dia"),
        backgroundColor: Colors.lightBlue,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          //width: double.infinity,
          /*decoration: BoxDecoration(
              border: Border.all(width: 3, color: Colors.amber)
          ),*/
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset("image/logo.png"),
              Text(
                _fraseGerada,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 25,
                    fontStyle: FontStyle.italic,
                    color: Colors.black
                ),
              ),
              RaisedButton(
                child: Text(
                  "Nova Frase",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),
                ),
                color: Colors.lightBlue,
                onPressed: _gerarFrase,
              )
            ],
          ),
        ),
      ),
    );
  }
}
