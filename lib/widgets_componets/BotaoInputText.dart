import 'package:flutter/material.dart';
class BotaoInputText extends StatefulWidget {
  dynamic nome = "";
  var input = new TextEditingController();
  BotaoInputText({@required this.nome, @required this.input});

  @override
  _BotaoInputTextState createState() => _BotaoInputTextState();
}

class _BotaoInputTextState extends State<BotaoInputText> {
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
                  child: TextFormField(
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