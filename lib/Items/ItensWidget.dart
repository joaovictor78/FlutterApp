import 'package:ematerapp/CustoDeProducao/CustoDeProducaoWidget.dart';
import 'package:ematerapp/db/my_database.dart';
import 'package:flutter/material.dart';

class ItensWidget extends StatefulWidget {
  @override
  _ItensWidgetState createState() => _ItensWidgetState();
}

class _ItensWidgetState extends State<ItensWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Itens",
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.pushNamed(context, "/AddWidget");
            },
          ),
        ],
      ),
      body: StreamBuilder<List<Iten>>(
        stream: MyDataBase.instance.itemDAO.listAll(),
        initialData: [],
        builder: (context, snapshot) {
          if (! snapshot.hasData) return Container();
          List<Iten> itens = snapshot.data;
          return ListView.builder(
            itemCount: itens.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                 height: 60,
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                child: ListTile(
                  leading: IconButton(
                    onPressed: () {
                      MyDataBase.instance.itemDAO.removeIten((itens[index].id));
                    },
                    icon: Icon(Icons.delete),
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.visibility),
                  ),
                  title: Text(itens[index].nome),
                  subtitle: Text(itens[index].valororiginal.toString()),
                ),
              );
            },
          );
        },   
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CustoDeProducaoWidget()),
            );
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
