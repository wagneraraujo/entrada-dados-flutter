import 'package:flutter/material.dart';

class CampoTexto extends StatefulWidget {
  CampoTexto({Key key}) : super(key: key);

  @override
  _CampoTextoState createState() => _CampoTextoState();
}

class _CampoTextoState extends State<CampoTexto> {
  //classe que controla o que foi digitado
  TextEditingController _controllerAlcool = TextEditingController();
  TextEditingController _controllerGasolina = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Gasolina ou Alcool"),
        ),
        body: Container(
            child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: Image.asset(
                  "images/alcool.jpg",
                  height: 200,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(bottom: 10),
                child: Text(
                  "Saiba qual o melhor valor para abastecimento",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24, color: Colors.blueGrey),
                ),
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: "Preço Alcool ex: 2.52"),
                style: TextStyle(fontSize: 18),
                controller: _controllerAlcool,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration:
                    InputDecoration(labelText: "Preço Gasolina ex: 4.52"),
                style: TextStyle(fontSize: 18),
                controller: _controllerGasolina,
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: RaisedButton(
                  child: Text(
                    "Calcular Agora",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.deepOrange,
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text("Resultado"),
              )
            ],
          ),
        )));
  }
}
