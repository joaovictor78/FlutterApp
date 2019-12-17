import 'package:ematerapp/Controledegastos/GraficosWidget/Graficos.dart';
import 'package:ematerapp/Resultado/Calculos/soma.dart';
import 'package:flutter/material.dart';
class Resultado extends StatefulWidget {
  @override
  _ResultadoState createState() => _ResultadoState();
}
class _ResultadoState extends State<Resultado> {
 CalcProducao calculomaodeobra = new CalcProducao();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(title: Text("Custos"),),
    body: Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
         children: <Widget>[
          Container(
            height: 120,
            width: 320,
            child: Text("Total dos custos diretos",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.all(
                    Radius.circular(15)
                  ),
                  ),
          ),   
          SizedBox( 
          height: 20,  
          child: Text(calculomaodeobra.totalOutro.toString()),
          ),
          Container(
            height: 120,
            width: 320,
            child: Text("Total dos custos indiretos",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            ),
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.all(
                    Radius.circular(15)
                  ),
                  ),
          ),
           SizedBox(
          height: 20,
          ),
          Container(
             height: 120,
            width: 320,
            child: Text("Custos Totais",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
            ),
            decoration: BoxDecoration(
              color: Colors.orangeAccent,
              borderRadius: BorderRadius.all(
                    Radius.circular(15)
                  ),
                  ),
          ),
        ],
      ),
    ),
   floatingActionButton: FloatingActionButton.extended(
     icon: Icon(Icons.keyboard_arrow_right),
     onPressed: (){
       Navigator.push(context,
       MaterialPageRoute(builder: (context) => HomePage(),
       ),
       );
     }, label: Container(
       width: 120  ,
      child: Text("Proximo",
      textAlign: TextAlign.center,),
   ),  
   ),
    );
  }
}