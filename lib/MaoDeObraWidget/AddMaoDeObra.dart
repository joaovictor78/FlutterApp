import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';
class AddMaoDeObra extends StatefulWidget {
  @override
  _AddMaoDeObraState createState() => _AddMaoDeObraState();
}

class _AddMaoDeObraState extends State<AddMaoDeObra> {
 DateTime _data = new DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Adicionar mão de obra"),
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
                    hintText: "Valor",
                  ),
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
                  
                     ' ${formatDate(_data, [dd, '-', mm, '-', yyyy])}',
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
                  Navigator.pushNamed(context,"/MaoDeObraWidget");
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