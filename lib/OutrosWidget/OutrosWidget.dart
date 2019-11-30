import 'package:flutter/material.dart';
class OutrosWidgets extends StatefulWidget {
  @override
  _OutrosWidgetsState createState() => _OutrosWidgetsState();
}

class _OutrosWidgetsState extends State<OutrosWidgets> {
   @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(title: Text("Outras despesas",),
      actions: <Widget>[
      IconButton(
        icon: Icon(Icons.add),
        onPressed:(){
         Navigator.pushNamed(context, "/AddOutros");
        },
      ),
        
      ],
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
      child: Form(
        child: ListView(
          children: <Widget>[
             Text("Você pode clicar em + para adicionar uma nova lista :)"),
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