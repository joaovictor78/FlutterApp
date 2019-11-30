import'package:flutter/material.dart';
class AddItens extends StatefulWidget {
  @override
  _AddItensState createState() => _AddItensState();
}

class _AddItensState extends State<AddItens> {
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
               TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Nome",
                  ),
               ),
               TextField(
                  keyboardType: TextInputType.number,
                 decoration: InputDecoration(
                   border: OutlineInputBorder(),
                   hintText: "Valor residual",
                 ),
               ),
               TextField(
                  keyboardType: TextInputType.number,
                 decoration: InputDecoration(
                   border: OutlineInputBorder(),
                   hintText: "Vida útil(anos)",
                 ),
               ),
               TextField(
                  keyboardType: TextInputType.number,
                 decoration: InputDecoration(
                   border: OutlineInputBorder(),
                   hintText: "Percentual da atividade"
                 ),
               ),
               TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Depreciação anual(3 ha)"
                  ),
               ),
               TextField(
                  keyboardType: TextInputType.number,
                 decoration: InputDecoration(
                     border: OutlineInputBorder(),
                     hintText: "Depreciação anual(1 ha)"
                 ),
               
               ),
               SizedBox(
                height: 18,
               ),
            FloatingActionButton.extended(
                 onPressed: () {
                  Navigator.pushNamed(context,"/ItensWidget");
                  },
                icon: Icon(Icons.thumb_up), 
                label: Text('OK'),
                backgroundColor: Colors.blueGrey,
    ),
               ],),
          ),
         
        ),
      
    );
  }
}