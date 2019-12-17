import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
class BotaoInputMoney extends StatefulWidget {
  dynamic nome = '';
  var input = new MoneyMaskedTextController();
  BotaoInputMoney({@required this.nome, @required this.input});

  @override
  _BotaoInputMoneyState createState() => _BotaoInputMoneyState();
}

class _BotaoInputMoneyState extends State<BotaoInputMoney> {
  @override
  Widget build(BuildContext context) {
      return Container(
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: widget.nome,
                      hintStyle: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    controller: widget.input,
                  ),
                );
  }
}