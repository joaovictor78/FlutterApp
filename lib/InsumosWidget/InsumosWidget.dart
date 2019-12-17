import 'package:ematerapp/db/my_database.dart';
import 'package:flutter/material.dart';

class InsumosWidget extends StatefulWidget {
  @override
  _InsumosWidgetState createState() => _InsumosWidgetState();
}

class _InsumosWidgetState extends State<InsumosWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Insumos",
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.pushNamed(context, "/AddInsumos");
            },
          ),
        ],
      ),
      body: StreamBuilder<List<Insumo>>(
        stream: MyDataBase.instance.insumoDAO.getAll(),
        initialData: [],
        builder: (context, snapshot) {
          if (!snapshot.hasData) return Container();
          List<Insumo> insumos = snapshot.data;
          return ListView.builder(
            itemCount: insumos.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: IconButton(
                  onPressed: () {
                    MyDataBase.instance.insumoDAO
                        .removeInsumo((insumos[index].id));
                  },
                  icon: Icon(Icons.delete),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.visibility),
                ),
                title: Text(insumos[index].nome),
                subtitle: Text(insumos[index].prince.toString()),
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
