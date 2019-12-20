import 'package:flutter/material.dart';

class CampoTexto extends StatefulWidget {
  CampoTexto({Key key}) : super(key: key);

  @override
  _CampoTextoState createState() => _CampoTextoState();
}

class _CampoTextoState extends State<CampoTexto> {
  //classe que controla o que foi digitado
  TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de dados"),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(20),
            child: TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(labelText: "Digite um texto"),
              style: TextStyle(
                fontSize: 25,
                color: Colors.green,
              ),

              //retorna de imadiato o que está sendo digitado
              onChanged: (String texto) {
                print("valor digitado:" + texto);
              },

              onSubmitted: (String dadoEnviado) {
                print("Dado enviado: " + dadoEnviado);
              },

              //controlador ininciado pelo textcontroller
              controller: _textEditingController,
            ),
          ),
          RaisedButton(
            child: Text("Salvar dados"),
            color: Colors.indigoAccent,
            onPressed: () {
              print("Dado pelo textEditting: " + _textEditingController.text);
            },
          )
        ],
      ),
    );
  }
}
