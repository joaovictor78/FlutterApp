
import 'package:flutter/material.dart';

class MaoDeObraWidget extends StatefulWidget {
  @override
  _MaoDeObraWidgetState createState() => _MaoDeObraWidgetState();
}

class _MaoDeObraWidgetState extends State<MaoDeObraWidget> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(title: Text("Mão de obra",),
      actions: <Widget>[
      IconButton(
        icon: Icon(Icons.add),
        onPressed:(){
         Navigator.pushNamed(context, "/AddMaoDeObra");
        },
      ),
        
      ],
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
      child: Form(
        child: ListView(
          children: <Widget>[
             Text("Você pode clicar em + para adicionar uma nova mão de obra :)"),
            RaisedButton(
              onPressed: (){
                Navigator.pushNamed(context, "/CustoDeProducaoWidget");
              },
              child: const Text(
            'Pronto',
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