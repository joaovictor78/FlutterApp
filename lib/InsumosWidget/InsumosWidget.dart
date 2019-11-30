import 'package:flutter/material.dart';
class InsumosWidget extends StatefulWidget {
  @override
  _InsumosWidgetState createState() => _InsumosWidgetState();
}

class _InsumosWidgetState extends State<InsumosWidget> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(title: Text("Insumos",),
      actions: <Widget>[
      IconButton(
        icon: Icon(Icons.add),
        onPressed:(){
         Navigator.pushNamed(context, "/AddInsumos");
        },
      ),
        
      ],
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
      child: Form(
        child: ListView(
          children: <Widget>[
             Text("Você pode clicar em + para adicionar insumos :)"),
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