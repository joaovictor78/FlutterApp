import 'package:flutter/material.dart';
class ItensWidget extends StatefulWidget {
  @override
  _ItensWidgetState createState() => _ItensWidgetState();
}

class _ItensWidgetState extends State<ItensWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Itens",),
      actions: <Widget>[
      IconButton(
        icon: Icon(Icons.add),
        onPressed:(){
         Navigator.pushNamed(context, "/AddWidget");
        },
      ),
        
      ],
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
      child: Form(
        child: ListView(
          children: <Widget>[
            Text("Você pode clicar em + para adicionar um novo item :)"),
            RaisedButton(
              onPressed: (){
                Navigator.pushNamed(context, "/CustoDeProducaoWidget");
              },
              child: const Text(
            'Proximo',
            style: TextStyle(fontSize: 20)
          ),
            )
        
          ],
        ),
        ),
        
      ),
    );
  }
}