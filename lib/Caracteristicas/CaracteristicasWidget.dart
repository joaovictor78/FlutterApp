import 'package:aplicativooficial/db/my_database.dart';
import 'package:flutter/material.dart';
class CaracteristicasWidget extends StatefulWidget {
  @override
  _CaracteristicasWidgetState createState() => _CaracteristicasWidgetState();
}
class _CaracteristicasWidgetState extends State<CaracteristicasWidget> {
  List<String> options = ["Pecuária", "Agronomia", "Pecuária e Agronomia"];
  String selected;
  int tam;
  String estr;
  String eqpm;
  int diarist;
  int empreg;
  @override
  Widget build(BuildContext context) {
    
     return Scaffold(
      appBar: AppBar(title: Text("Infraestrutura da propriedade",
      style: TextStyle(
        fontSize: 17,
      ),), 
      backgroundColor: Colors.green,),
      body:Padding(
      padding: EdgeInsets.all(0.9),
      child: Form( 
      child: ListView(
        children: <Widget>[
            TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: "Tamanho da terra em (ha) :"
              ),
              onChanged: (value){
                tam = int.parse(value);
              },
            ),
            SizedBox(
            height: 9,
            ),
          Container(
             child: DropdownButtonFormField(
                hint: Text("Atividades :"),
                value: selected,
                items: options
                    .map((option) => DropdownMenuItem(
                          child: Text(option),
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
            TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: "N° Empregados :"
              ),
              onChanged: (text){
                empreg = int.parse(text);
              },
            ),
             TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: "N° Diaristas :"
              ),
              onChanged: (text){
                diarist = int.parse(text);
              },
            ),
             TextField(
            decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: " Descrição da estrutura da fazenda:"
              ),
              onChanged: (text){
                estr = text;
              },
            ),
             TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: " N° Maquinas/Equipamentos :"
              ),
              onChanged: (text){
                eqpm = text;
              },
            ),  
                    RaisedButton(
          onPressed: () {
            MyDataBase.instance.caracteristicaDAO.addCaracteristica(Caracteristica(estrutura: estr, atividades: selected, tamanho: tam, equipamentos: eqpm, diaristas: diarist, empregados: empreg, id: 1));
            Navigator.pushNamed(context, "/ItensWidget");
          },
          child: const Text(
            'Proximo',
            style: TextStyle(fontSize: 20)
          ),
        ),
        ], 
      ),
      )
      ),
      );
  }
}