import 'package:flutter/material.dart';
class DespesasAdminWidgets extends StatefulWidget {
  @override
  _DespesasAdminWidgetsState createState() => _DespesasAdminWidgetsState();
}

class _DespesasAdminWidgetsState extends State<DespesasAdminWidgets> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(title: Text("Despesas Administrativas",),
      actions: <Widget>[
      IconButton(
        icon: Icon(Icons.add),
        onPressed:(){
         Navigator.pushNamed(context, "/AddDespesas");
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