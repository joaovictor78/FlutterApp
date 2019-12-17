import 'package:ematerapp/db/my_database.dart';
import 'package:flutter/material.dart';

class DespesasAdminWidgets extends StatefulWidget {
  @override
  _DespesasAdminWidgetsState createState() => _DespesasAdminWidgetsState();
}

class _DespesasAdminWidgetsState extends State<DespesasAdminWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Despesas Administrativas",
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.pushNamed(context, "/AddDespesas");
            },
          ),
        ],
      ),
      body: StreamBuilder<List<Despesa>>(
        stream: MyDataBase.instance.despesaDAO.listAll(),
        initialData: [],
        builder: (context, snapshot) {
          if (!snapshot.hasData) return Container();
          List<Despesa> despesas = snapshot.data;
          return ListView.builder(
            itemCount: despesas.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(despesas[index].nome),
                subtitle: Text(despesas[index].prince.toString()),
                leading: IconButton(
                  onPressed: () {
                    MyDataBase.instance.despesaDAO.removeDespesas((despesas[index].id));
                  },
                  icon: Icon(Icons.delete),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.visibility),
                ),
              
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
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
