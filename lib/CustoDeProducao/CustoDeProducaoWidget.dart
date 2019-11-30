import 'package:flutter/material.dart';
class CustoDeProducaoWidget extends StatefulWidget {
  @override
  _CustoDeProducaoWidgetState createState() => _CustoDeProducaoWidgetState();
}

class _CustoDeProducaoWidgetState extends State<CustoDeProducaoWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Custo de produção"),
        
      ),
      body: Form(
        child: Container(
          child:ListView(
            children: <Widget>[
            
            RaisedButton.icon(
                      onPressed: () {
                        Navigator.pushNamed(context, "/MaoDeObraWidget");
                      },
                      elevation: 2.0,
                       shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(5.0),
         ),
              color: Colors.blueAccent,
              icon: Icon(Icons.add_circle_outline),
              label: Text("Mão de Obra",
             style: TextStyle(
             fontWeight: FontWeight.w900,
    ),
  ),
),
          SizedBox(
              height: 20,
          ),  
           RaisedButton.icon(

                      onPressed: () {
                        Navigator.pushNamed(context, "/InsumosWidget");
                      },
                      elevation: 2.0,
                       shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(5.0),
         ),
              color: Colors.blueAccent,
              icon: Icon(Icons.add_circle_outline),
              label: Text("Insumos",
             style: TextStyle(
             fontWeight: FontWeight.w900,
    ),
  ),
),
          SizedBox(
              height: 20,
          ),  
            RaisedButton.icon(

                      onPressed: () {
                        Navigator.pushNamed(context, "/DespesasAdminWidgets");
                      },
                      elevation: 2.0,
                       shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(5.0),
         ),
              color: Colors.blueAccent,
              icon: Icon(Icons.add_circle_outline),
              label: Text("Despesas administrativas",
             style: TextStyle(
             fontWeight: FontWeight.w900,
    ),
  ),
),
          SizedBox(
              height: 20,
          ),  
             RaisedButton.icon(

                      onPressed: () {
                        Navigator.pushNamed(context, "/OutrosWidget");
                      },
                      elevation: 2.0,
                       shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(5.0),
         ),
              color: Colors.blueAccent,
              icon: Icon(Icons.add_circle_outline),
              label: Text("Outros Custos",
             style: TextStyle(
             fontWeight: FontWeight.w900,
    ),
  ),
),
          SizedBox(
              height: 20,
          ),  
             RaisedButton(
              onPressed: (){
                Navigator.pushNamed(context, "/ControleDeGastosWidget");
              },
              child: const Text(
            'Proximo',
            style: TextStyle(fontSize: 20)
          ),
            ),

            ],
            ),
          ), 
        ),
      
    );
  }
}