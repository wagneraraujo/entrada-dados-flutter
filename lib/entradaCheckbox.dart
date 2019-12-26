import 'package:flutter/material.dart';

class EntradaCheckbox extends StatefulWidget {
  EntradaCheckbox({Key key}) : super(key: key);
  @override
  _EntradaCheckboxState createState() => _EntradaCheckboxState();
}

class _EntradaCheckboxState extends State<EntradaCheckbox> {
  bool _comidaBR = false;
  bool _comidaMX = false;
  String _escolhaPagamento;
  var label;

  //slider valor
  double valor = 5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Estudo com dados form"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            //check list tem mais opções
            CheckboxListTile(
              //activeColor: Colors.deepPurple,
              title: Text("Comida Brasileira"),
              //selected: true,
              secondary: Icon(Icons.account_box),
              subtitle: Text(
                "Premiada em todo o mundo",
                textAlign: TextAlign.left,
              ),
              value: _comidaBR,
              onChanged: (bool valor) {
                setState(() {
                  _comidaBR = valor;
                });
              },
            ),
            CheckboxListTile(
              //activeColor: Colors.deepPurple,
              title: Text("Comida Mexicana"),
              //selected: true,
              secondary: Icon(Icons.account_box),
              subtitle: Text(
                "Muito apimentada",
                textAlign: TextAlign.left,
              ),
              value: _comidaMX,
              onChanged: (bool valor) {
                setState(() {
                  _comidaMX = valor;
                });
              },
            ),

            RadioListTile(
              title: Text("Pagamento Mensal"),
              value: "Mensal",
              groupValue: _escolhaPagamento,
              onChanged: (String escolha) {
                setState(() {
                  _escolhaPagamento = escolha;
                });
                print("Resultado:" + escolha);
              },
            ),

            RadioListTile(
              title: Text("Pagamento Anual"),
              value: "Anual",
              groupValue: _escolhaPagamento,
              onChanged: (String escolha) {
                setState(() {
                  _escolhaPagamento = escolha;
                });
                print("Resultado:" + escolha);
              },
            ),

            SwitchListTile(
              //switch funciona em column
              title: Text("Receber notificacoes"),
              value: true,
            ),

            Slider(
              value: valor,
              min: 0,
              max: 50,
              label: label,
              divisions: 50,
              onChanged: (double novoValor) {
                setState(() {
                  valor = novoValor;
                  label = novoValor.toString();
                });
                print("novo valor:" + novoValor.toString());
              },
            ),

            RaisedButton(
              child: Text(
                "Salvar",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
