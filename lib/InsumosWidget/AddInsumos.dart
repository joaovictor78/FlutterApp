import 'package:flutter/material.dart';
class AddInsumos extends StatefulWidget {
  @override
  _AddInsumosState createState() => _AddInsumosState();
}
class _AddInsumosState extends State<AddInsumos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Adicionar Insumos"),
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
                  Navigator.pushNamed(context,"/InsumosWidget");
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