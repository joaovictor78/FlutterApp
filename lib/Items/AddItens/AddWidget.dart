import 'package:ematerapp/db/my_database.dart';
import 'package:ematerapp/widgets_componets/BotaoInputText.dart';
import 'package:ematerapp/widgets_componets/BottaoInputMoney.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class AddItens extends StatefulWidget {
  @override
  _AddItensState createState() => _AddItensState();
}

class _AddItensState extends State<AddItens> {
  var name = TextEditingController();
  var vlo, vlr, vutil, perct, dp1, dp2 = MoneyMaskedTextController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro de itens"),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Form(
          child: ListView(
            children: <Widget>[
              BotaoInputText(nome: "Nome", input: name),
              SizedBox(
                height: 10,
              ),
              BotaoInputMoney(
                nome: "Valor original",
                input: vlo,
              ),
              SizedBox(
                height: 10,
              ),
              BotaoInputMoney(
                nome: "Valor original",
                input: vlo,
              ),
              BotaoInputMoney(
                nome: "Vida útil(anos)",
                input: vutil,
              ),
              SizedBox(
                height: 10,
              ),
              BotaoInputMoney(
                nome: "Percentual da atividade",
                input: perct,
              ),
              SizedBox(
                height: 10,
              ),
              FloatingActionButton.extended(
                onPressed: () {
                  Navigator.pop(context);
                  MyDataBase.instance.itemDAO.addItem(Iten(
                      vidautil: vutil,
                      percentual: perct,
                      valororiginal: vlo,
                      valorresidual: vlr,
                      nome: name.toString(),
                      deprec1: null,
                      deprec3: null));
                },
                icon: Icon(Icons.thumb_up),
                label: Text('OK'),
                backgroundColor: Colors.blueGrey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
