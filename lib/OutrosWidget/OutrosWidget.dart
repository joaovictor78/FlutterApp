import 'package:ematerapp/db/my_database.dart';
import 'package:flutter/material.dart';
class OutrosWidgets extends StatefulWidget {
  @override
  _OutrosWidgetsState createState() => _OutrosWidgetsState();
}

class _OutrosWidgetsState extends State<OutrosWidgets> {
   @override
  Widget build(BuildContext context) {
return Scaffold(
      appBar: AppBar(
        title: Text(
          "Outras despesas",
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.pushNamed(context, "/AddOutros");
            },
          ),
        ],
      ),
      body: StreamBuilder<List<Outro>>(
        stream: MyDataBase.instance.outroDAO.listAll(),
        initialData: [],
        builder: (context, snapshot) {
          if (!snapshot.hasData) return Container();
          List<Outro> outros = snapshot.data;
          return ListView.builder(
            itemCount: outros.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: IconButton(
                  onPressed: () {
                    MyDataBase.instance.outroDAO.removeOutro((outros[index].id));
                  },
                  icon: Icon(Icons.delete),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.visibility),
                ),
                title: Text(outros[index].nome),
                subtitle: Text(outros[index].prince.toString()),
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
            width: 220,
            child: Text("Proximo", textAlign: TextAlign.center,),  
          ),
        icon: Icon(Icons.keyboard_arrow_right),
      ),
    );
  }
}
