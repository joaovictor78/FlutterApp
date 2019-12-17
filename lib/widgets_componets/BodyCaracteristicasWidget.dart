import 'package:ematerapp/Items/ItensWidget.dart';
import 'package:flutter/material.dart';
import 'BotaoInputText.dart';
import 'BottaoInputMoney.dart';
class BodyCaracteristicasWidget extends StatefulWidget {
  @override
  _BodyCaracteristicasWidgetState createState() => _BodyCaracteristicasWidgetState();
}
class _BodyCaracteristicasWidgetState extends State<BodyCaracteristicasWidget> {
  var  estr = new  TextEditingController();
  var tam, eqpm, diarist,empreg;
  List<String> options = ["Pecuária", "Agronomia", "Pecuária e Agronomia"];
  String selected;
  @override
  Widget build(BuildContext context) {
  return Container(
    child: Column(
      children: [
        BotaoInputText(nome: "Tamanho da terra em (ha) :", input: tam),
        SizedBox(
          height: 10,
        ),
        Container(
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  child: DropdownButtonFormField(
                    hint: Text(
                      "Atividades :",
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    value: selected,
                    items: options
                        .map((option) => DropdownMenuItem(
                              child: Text(
                                option,
                                style: TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              value: option,
                            ))
                        .toList(),
                    onChanged: (value) {
                      setState(() {
                        selected = value;
                      });
                    },
                  ),
                ),
        SizedBox(
          height: 10,
        ),
        BotaoInputMoney(nome: "N° Diaristas :", input: empreg),
        SizedBox(
          height: 10,
        ),
        BotaoInputMoney(nome: "N° Diaristas :", input: diarist),
        SizedBox(
          height: 10,
        ),
        BotaoInputText(
            nome: " Descrição da estrutura da fazenda:", input: estr),
        SizedBox(
          height: 10,
        ),
        BotaoInputMoney(nome: " N° Maquinas/Equipamentos :", input: eqpm),
          SizedBox(
          height: 10,
        ),
         Container(
        child:  FloatingActionButton.extended(
        onPressed: () { 
          Navigator.push(context, 
          MaterialPageRoute(builder: (context) => 
          ItensWidget(),
          ),
          );
        },
        label: Container(
          width: MediaQuery.of(context).size.width / 1.2,
          height: 30,
          color: Colors.green,
          child: Text(
            "Proximo",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    ),
      ],
    ),
  );
  }
}