import 'package:ematerapp/db/my_database.dart';
import 'package:flutter/material.dart';
class CustosIndiretosWidget extends StatefulWidget {
  @override
  _CustosIndiretosWidgetState createState() => _CustosIndiretosWidgetState();
}
class _CustosIndiretosWidgetState extends State<CustosIndiretosWidget> {
  int dp, copt, copc;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Custos indiretos"),
      ),
      body:  Form(
            child: ListView(
              children: <Widget>[
                 TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: "Depreciação :"
              ),
              onChanged: (value){
                 dp = int.parse(value);
              },
            ),
            SizedBox(
            height: 9,
            ),
             TextField(
            keyboardType: TextInputType.number,
             decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: "Custo de oportunidade de terra :"
              ),
              onChanged: (value){
                copt = int.parse(value);
              },
            ),
            SizedBox(
            height: 9,
            ),
             TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: "Custo de oportunidade do capital :"
              ),
              onChanged: (value){
                copc = int.parse(value);
              },
            ),
              ],
            ),
          ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed:(){
          Navigator.pop(context);
          MyDataBase.instance.custoIndiretoDAO.addCusto(CustosIndireto(custooportc: copc, custooportt: copt, depreciacao: dp));          
        },
        label: Container(
          width: 220,
          child: Text("Proximo",
          textAlign: TextAlign.center,
          ), 
        ),
                icon: Icon(Icons.chevron_right),
      ),
        
    );
  }
}