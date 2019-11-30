import 'package:flutter/material.dart';
class AddOutros extends StatefulWidget {
  @override
  _AddOutrosState createState() => _AddOutrosState();
}

class _AddOutrosState extends State<AddOutros> {
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Adicionar outras despesas"),
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
                  Navigator.pushNamed(context,"/OutrosWidget");
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