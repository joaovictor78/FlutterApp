import 'package:flutter/material.dart';
class AddDespesas extends StatefulWidget {
  @override
  _AddDespesasState createState() => _AddDespesasState();
}

class _AddDespesasState extends State<AddDespesas> {
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Adicionar despesas"),
       ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Form(
          child: ListView(
            children: <Widget>[
               TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Valor",
                  ),
               ),
               TextField(
                  
                 decoration: InputDecoration(
                   border: OutlineInputBorder(),
                   hintText: "Mes",
                 ),
               ),
               SizedBox(
                height: 18,
               ),
            FloatingActionButton.extended(
                 onPressed: () {
                  Navigator.pushNamed(context,"/DespesasAdminWidgets");
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