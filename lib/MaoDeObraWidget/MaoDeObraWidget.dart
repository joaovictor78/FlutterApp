
import 'package:ematerapp/db/my_database.dart';
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
        body: StreamBuilder<List<MaoDeObra>>(
      stream: MyDataBase.instance.maoDeObraDAO.listAll(),
      initialData: [],
      builder: (context, snapshot){
        if(!snapshot.hasData) return Container();
        List<MaoDeObra> maoDeObras = snapshot.data;
        return ListView.builder(
        itemCount: maoDeObras.length,
        itemBuilder: (BuildContext context, int index){
          return ListTile(
          leading: IconButton(
            onPressed:(){
              MyDataBase.instance.maoDeObraDAO.removeMaoDeObra((maoDeObras[index].id));
            },  
            icon: Icon(Icons.delete),
          ),
          trailing: IconButton(onPressed:(){
          },
          icon: Icon(Icons.visibility),
          ),
          title: Text(maoDeObras[index].nome),
          subtitle: Text(maoDeObras[index].prince.toString()),
          );
        },
        );
      },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed:(){
          Navigator.pop(context);
          
        },
         label: Container(
            width: 230,
            child: Text("Proximo", textAlign: TextAlign.center,),  
          ), 
        icon: Icon(Icons.keyboard_arrow_right),
      ),

   );
  }
}