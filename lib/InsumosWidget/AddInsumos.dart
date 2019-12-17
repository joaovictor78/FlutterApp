import 'package:ematerapp/db/my_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';
class AddInsumos extends StatefulWidget {
  @override
  _AddInsumosState createState() => _AddInsumosState();
}
class _AddInsumosState extends State<AddInsumos> {
  DateTime _data = new DateTime.now();
  String data, name;
  int preco;
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
                 decoration: InputDecoration(
                   border: OutlineInputBorder(),
                   hintText: "Nome",
                 ),
                 onChanged: (text){
                   name = text;
                 },
               ),
               TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Valor",
                  ),
                  onChanged: (v){
                    preco = int.parse(v);
                  },
               ),
            new FlatButton(
              
              child: new Row(
              
                children: <Widget>[
                new Text("Data :",
                
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontSize: 20,
                
                ),
                ),
            
                new Text(
                  
                     data = ' ${formatDate(_data, [dd, '-', mm, '-', yyyy])}',
                     style: TextStyle(fontSize: 20,
                     color: Colors.blueGrey,
                          
                     ),
                     
                     textAlign: TextAlign.left,
                     
                ),
                new Icon(Icons.calendar_today),
              ],
              ),
              onPressed: () async{
                 final dtPick = await showDatePicker(
                   context: context,
                   initialDate: new DateTime.now(),
                   firstDate: new DateTime(2012),
                   lastDate: new DateTime(2030));
      
                 if(dtPick != null && dtPick != _data){
                   setState(() {
                    _data = dtPick; 
                   });
                 }
              
              }, 

            ),      
              
               SizedBox(
                height: 18,
               ),
            FloatingActionButton.extended(
                 onPressed: () {
                  Navigator.pop(context);
                  MyDataBase.instance.insumoDAO.addInsumo(Insumo(prince: preco, nome: name, ano: data));
                  },
                icon: Icon(Icons.thumb_up), 
                label: Text('OK'),
                backgroundColor: Colors.blueGrey,
    ),
            
               ],
               
               ),
           
          ),
       
        ),
    );
  }
}